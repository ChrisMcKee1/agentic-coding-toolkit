---
name: template-skill
description: Skill template for a reusable, domain-specific workflow.
argument-hint: "[task context]"
---

Use this skill when:

- The task requires specialized domain knowledge.
- Repeated workflow steps should be standardized.

Workflow:

1. Gather context.
2. Apply domain-specific checks.
3. Produce implementation guidance and concrete output.

Requirements:
- `name` and `description` are required in `SKILL.md` frontmatter.
- `name` must be lower-case, hyphenated, and match the parent folder name.
