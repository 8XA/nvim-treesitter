((comment) @injection.content
  (#set! injection.language "comment"))

; Github actions ("run") / Gitlab CI ("scripts")
(block_mapping_pair
  key: (flow_node) @_run
  (#any-of? @_run "run" "script" "before_script" "after_script")
  value:
    (flow_node
      (plain_scalar
        (string_scalar) @injection.content)
      (#set! injection.language "bash")))

(block_mapping_pair
  key: (flow_node) @_run
  (#any-of? @_run "run" "script" "before_script" "after_script")
  value:
    (block_node
      (block_scalar) @injection.content
      (#set! injection.language "bash")
      (#offset! @injection.content 0 1 0 0)))

(block_mapping_pair
  key: (flow_node) @_run
  (#any-of? @_run "run" "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (flow_node
            (plain_scalar
              (string_scalar) @injection.content))
          (#set! injection.language "bash")))))

(block_mapping_pair
  key: (flow_node) @_run
  (#any-of? @_run "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (block_node
            (block_scalar) @injection.content
            (#set! injection.language "bash")
            (#offset! @injection.content 0 1 0 0))))))

; Prometheus Alertmanager ("expr")
(block_mapping_pair
  key: (flow_node) @_expr
  (#eq? @_expr "expr")
  value:
    (flow_node
      (plain_scalar
        (string_scalar) @injection.content)
      (#set! injection.language "promql")))

(block_mapping_pair
  key: (flow_node) @_expr
  (#eq? @_expr "expr")
  value:
    (block_node
      (block_scalar) @injection.content
      (#set! injection.language "promql")
      (#offset! @injection.content 0 1 0 0)))

(block_mapping_pair
  key: (flow_node) @_expr
  (#eq? @_expr "expr")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (flow_node
            (plain_scalar
              (string_scalar) @injection.content))
          (#set! injection.language "promql")))))

(block_mapping_pair
  key: (flow_node) @_expr
  (#eq? @_expr "expr")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (block_node
            (block_scalar) @injection.content
            (#set! injection.language "promql")
            (#offset! @injection.content 0 1 0 0))))))

; Codigo python en los yaml de docassemble
(block_mapping_pair
  key: (flow_node) @_code
  (#any-of? @_code "code" "script" "before_script" "after_script")
  value:
    (flow_node
      (plain_scalar
        (string_scalar) @injection.content)
      (#set! injection.language "python")))

(block_mapping_pair
  key: (flow_node) @_code
  (#any-of? @_code "code" "script" "before_script" "after_script")
  value:
    (block_node
      (block_scalar) @injection.content
      (#set! injection.language "python")
      (#offset! @injection.content 0 1 0 0)))

(block_mapping_pair
  key: (flow_node) @_code
  (#any-of? @_code "code" "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (flow_node
            (plain_scalar
              (string_scalar) @injection.content))
          (#set! injection.language "python")))))

(block_mapping_pair
  key: (flow_node) @_code
  (#any-of? @_code "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (block_node
            (block_scalar) @injection.content
            (#set! injection.language "python")
            (#offset! @injection.content 0 1 0 0))))))

; Codigo html en los yaml de docassemble para la tag css
(block_mapping_pair
  key: (flow_node) @_css
  (#any-of? @_css "css" "script" "before_script" "after_script")
  value:
    (flow_node
      (plain_scalar
        (string_scalar) @injection.content)
      (#set! injection.language "html")))

(block_mapping_pair
  key: (flow_node) @_css
  (#any-of? @_css "css" "script" "before_script" "after_script")
  value:
    (block_node
      (block_scalar) @injection.content
      (#set! injection.language "html")
      (#offset! @injection.content 0 1 0 0)))

(block_mapping_pair
  key: (flow_node) @_css
  (#any-of? @_css "css" "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (flow_node
            (plain_scalar
              (string_scalar) @injection.content))
          (#set! injection.language "html")))))

(block_mapping_pair
  key: (flow_node) @_css
  (#any-of? @_css "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (block_node
            (block_scalar) @injection.content
            (#set! injection.language "html")
            (#offset! @injection.content 0 1 0 0))))))

; Codigo html en los yaml de docassemble para la tag script
(block_mapping_pair
  key: (flow_node) @_script
  (#any-of? @_script "script" "script" "before_script" "after_script")
  value:
    (flow_node
      (plain_scalar
        (string_scalar) @injection.content)
      (#set! injection.language "html")))

(block_mapping_pair
  key: (flow_node) @_script
  (#any-of? @_script "script" "script" "before_script" "after_script")
  value:
    (block_node
      (block_scalar) @injection.content
      (#set! injection.language "html")
      (#offset! @injection.content 0 1 0 0)))

(block_mapping_pair
  key: (flow_node) @_script
  (#any-of? @_script "script" "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (flow_node
            (plain_scalar
              (string_scalar) @injection.content))
          (#set! injection.language "html")))))

(block_mapping_pair
  key: (flow_node) @_script
  (#any-of? @_script "script" "before_script" "after_script")
  value:
    (block_node
      (block_sequence
        (block_sequence_item
          (block_node
            (block_scalar) @injection.content
            (#set! injection.language "html")
            (#offset! @injection.content 0 1 0 0))))))

