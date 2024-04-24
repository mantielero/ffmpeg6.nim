# https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/avio_list_dir.c
# Show how to list directories through the libavformat AVIOContext API.
import ffmpeg6

proc `$`*(val: enumaviodirentrytype):string =  
  result =  case val:
            of Avioentryunknown: "<UNKNOWN>"
            of Avioentryblockdevice: "<BLOCK DEVICE>"
            of Avioentrycharacterdevice: "<CHARACTER DEVICE>"
            of Avioentrydirectory: "<DIR>"
            of Avioentrynamedpipe: "<PIPE>"
            of Avioentrysymboliclink: "<LINK>"
            of Avioentrysocket: "<SOCKET>"
            of Avioentryfile: "<FILE>"
            of Avioentryserver: "<SERVER>"
            of Avioentryshare: "<SHARE>"
            of Avioentryworkgroup: "<WORKGROUP>"
            else: "<UNKNOWN>"

proc walk(folder:string) =
  var entry:ptr AVIODirEntry = nil
  var ctx:ptr AVIODirContext = nil
  var cnt,ret:cint
  var filemode,uid_and_gid:string #char filemode[4], uid_and_gid[20];

  ret = avio_open_dir(ctx.addr, folder.cstring, nil)
  if ret < 0:
    discard

  var flag = true
  cnt = 0
  while flag:
    ret = avio_read_dir(ctx, entry.addr)
    
    if entry == nil:
      break
    if entry.filemode == -1:
      echo "????"
    else:
      echo entry.filemode

    echo entry.userid
    echo entry.groupid
    echo entry.typefield.enumaviodirentrytype
    #echo entry.`type`
    echo entry.size
    echo entry.name
    #uid_and_gid
    #filemode,
    echo entry.modification_timestamp
    echo entry.access_timestamp
    echo entry.status_change_timestamp
    #avio_free_directory_entry(&entry);    
    echo "----"
  #avio_close_dir(&ctx);

proc main =
  walk("./")

main()

#[



static int list_op(const char *input_dir)
{
    if ((ret = avio_open_dir(&ctx, input_dir, NULL)) < 0) {
        av_log(NULL, AV_LOG_ERROR, "Cannot open directory: %s.\n", av_err2str(ret));
        goto fail;
    }

    cnt = 0;
    for (;;) {
        if ((ret = avio_read_dir(ctx, &entry)) < 0) {
            av_log(NULL, AV_LOG_ERROR, "Cannot list directory: %s.\n", av_err2str(ret));
            goto fail;
        }
        if (!entry)
            break;
        if (entry->filemode == -1) {
            snprintf(filemode, 4, "???");
        } else {
            snprintf(filemode, 4, "%3"PRIo64, entry->filemode);
        }
        snprintf(uid_and_gid, 20, "%"PRId64"(%"PRId64")", entry->user_id, entry->group_id);
        if (cnt == 0)
            av_log(NULL, AV_LOG_INFO, "%-9s %12s %30s %10s %s %16s %16s %16s\n",
                   "TYPE", "SIZE", "NAME", "UID(GID)", "UGO", "MODIFIED",
                   "ACCESSED", "STATUS_CHANGED");
        av_log(NULL, AV_LOG_INFO, "%-9s %12"PRId64" %30s %10s %s %16"PRId64" %16"PRId64" %16"PRId64"\n",
               type_string(entry->type),
               entry->size,
               entry->name,
               uid_and_gid,
               filemode,
               entry->modification_timestamp,
               entry->access_timestamp,
               entry->status_change_timestamp);
        avio_free_directory_entry(&entry);
        cnt++;
    };

  fail:
    avio_close_dir(&ctx);
    return ret;
}

static void usage(const char *program_name)
{
    fprintf(stderr, "usage: %s input_dir\n"
            "API example program to show how to list files in directory "
            "accessed through AVIOContext.\n", program_name);
}

int main(int argc, char *argv[])
{
    int ret;

    av_log_set_level(AV_LOG_DEBUG);

    if (argc < 2) {
        usage(argv[0]);
        return 1;
    }

    avformat_network_init();

    ret = list_op(argv[1]);

    avformat_network_deinit();

    return ret < 0 ? 1 : 0;
}

]#