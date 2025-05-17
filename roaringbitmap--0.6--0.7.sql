/* roaringbitmap--0.6--0.7 */

-- Add rb_run_optimize in 0.7
CREATE OR REPLACE FUNCTION rb_run_optimize(roaringbitmap)
  RETURNS roaringbitmap
  AS 'MODULE_PATHNAME', 'rb_run_optimize'
  LANGUAGE C STRICT IMMUTABLE;
