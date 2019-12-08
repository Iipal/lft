include configs/default_lib_config.mk

.PHONY: all multi
multi:
ifneq (,$(filter $(MAKECMDGOALS),debug debug_all))
	@$(MAKE) $(MAKE_PARALLEL_FLAGS) CFLAGS="$(CFLAGS_DEBUG)" all
else
 ifneq (,$(filter $(MAKECMDGOALS),sanitize sanitize_all))
	@$(MAKE) $(MAKE_PARALLEL_FLAGS) CFLAGS="$(CFLAGS_SANITIZE)" all
 else
	@$(MAKE) $(MAKE_PARALLEL_FLAGS) all
 endif
endif

all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $(ARFLAGS) $(NAME) $(OBJS)
	@$(MAKE) STATUS

$(OBJS): %.o: %.c
	@$(CC) $(addprefix "-D ",$(DEFINES)) -c $(CFLAGS) $(CFLAGS_WARN) $(IFLAGS) $< -o $@
	@$(ECHO) " | $@: $(MSG_SUCCESS)"

STATUS:
	@$(ECHO) "/ created: $(NAME) $(MSG_SUCCESS)"
ifneq (,$(DEFINES))
	@$(ECHO) "| defines: $(DEFINES)"
endif
	@$(ECHO) "| compiler default flags: $(CLR_UNDERLINE)$(CFLAGS_WARN)$(CLR_WHITE)"
	@$(ECHO) "| compiler optional flags: $(CLR_UNDERLINE)$(CFLAGS)$(CLR_WHITE)"
	@$(ECHO) "\ archiver flags: $(CLR_UNDERLINE)$(ARFLAGS)$(CLR_WHITE)"

debug_all: pre
debug: multi

sanitize_all: pre
sanitize: multi

clean:
	@$(DEL) $(OBJS)
	@$(ECHO) " | $(CLR_INVERT)deleted$(CLR_WHITE): $(NPWD) source objects"
fclean: clean
	@$(DEL) $(NAME)
	@$(ECHO) " | $(CLR_INVERT)deleted$(CLR_WHITE): $(NPWD)"

pre: fclean multi
re: fclean multi

norme:
	@$(ECHO) "$(CLR_INVERT)norminette$(CLR_WHITE) for $(NPWD):"
	@norminette includes/
	@norminette $(SRCS)

.PHONY: re fclean clean norme del pre sanitize sanitize_all debug debug_all STATUS
