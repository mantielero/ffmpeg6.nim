import ../../wrapperFuthark/libav

# FilterContext
type
  FilterContextObj* = object
    handle*:ptr AVFilterContext

  FilterContext* = ref FilterContextObj

# proc `destroy=`*(val:FilterContext) =
#   if val.handle != nil:
#     av_free(val.handle)

# FilterInOut
type
  FilterInOutObj* = object
    handle*:ptr AVFilterInOut

  FilterInOut* = ref FilterInOutObj

proc `destroy=`*(val:FilterInOut) =
  if val.handle != nil:
    avfilter_inout_free(val.handle.addr)  

proc newFilterInOut*():FilterInOut =
  result = new FilterInOut
  result.handle = avfilter_inout_alloc()
  if result.handle == nil:
    raise newException(ValueError, "failed to allocate memory for FilterInOut")


type
  FilterObj* = object
    handle*: ptr AVFilter   
  Filter* = ref FilterObj

proc getFilterByName*(name:string):Filter =
  result = new Filter
  result.handle = avfilter_get_by_name(name.cstring)

type
  FilterGraphObj* = object
    handle*: ptr Avfiltergraph
  FilterGraph* = ref FilterGraphObj

proc newFilterGraph*():FilterGraph =
  result = new FilterGraph
  result.handle =  avfilter_graph_alloc()
  if result.handle == nil:
    raise newException(ValueError, "failed to allocate FilterGraph")

# avfilter_graph_create_filter(
#                 buffersrc_ctx.addr, buffersrc.handle, "in".cstring,
#                 args, nil, filter_graph.handle )