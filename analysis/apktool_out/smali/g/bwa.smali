.class public abstract Lg/bwa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lg/ddf;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Landroid/util/Pair;

    const-string v5, "xmlns"

    const-string v6, "android"

    invoke-direct {v1, v5, v6, v2, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/bwa;->a:Ljava/util/HashMap;

    new-instance v1, Lg/ddf;

    new-array v4, v2, [Landroid/util/Pair;

    const-string v5, "sharedUserId"

    invoke-direct {v1, v6, v5, v2, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v2, [Landroid/util/Pair;

    const-string v8, "sharedUserLabel"

    invoke-direct {v1, v6, v8, v4, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Landroid/util/Pair;

    const-string v10, "versionCode"

    invoke-direct {v1, v6, v10, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v10, "versionName"

    invoke-direct {v1, v6, v10, v2, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-instance v9, Landroid/util/Pair;

    const-string v10, "auto"

    invoke-direct {v9, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    const-string v11, "internalOnly"

    invoke-direct {v10, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "preferExternal"

    invoke-direct {v11, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v14, v4, [Landroid/util/Pair;

    aput-object v9, v14, v2

    aput-object v10, v14, v7

    aput-object v11, v14, v12

    const-string v9, "installLocation"

    invoke-direct {v1, v6, v9, v2, v14}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v10, "name"

    invoke-direct {v1, v6, v10, v2, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v11, "allowEmbedded"

    invoke-direct {v1, v6, v11, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v11, "allowTaskReparenting"

    invoke-direct {v1, v6, v11, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v14, "alwaysRetainTaskState"

    invoke-direct {v1, v6, v14, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v14, "autoRemoveFromRecents"

    invoke-direct {v1, v6, v14, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    new-array v9, v2, [Landroid/util/Pair;

    const-string v14, "banner"

    invoke-direct {v1, v6, v14, v4, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ddf;

    const-string v9, "clearTaskOnLaunch"

    new-array v15, v2, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v12, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v9, Landroid/util/Pair;

    const-string v15, "mcc"

    invoke-direct {v9, v8, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x1

    const-string v7, "mnc"

    invoke-direct {v15, v13, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v17, 0x2

    const/4 v12, 0x4

    const/16 v18, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v19, 0x4

    const-string v12, "locale"

    invoke-direct {v7, v2, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v20, 0x8

    const/16 v21, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v22, v7

    const-string v7, "touchscreen"

    invoke-direct {v12, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    move-object/from16 v23, v9

    const/16 v24, 0x10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v25, v12

    const-string v12, "keyboard"

    invoke-direct {v7, v9, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v26, 0x20

    move-object/from16 v27, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v26, v15

    const-string v15, "keyboardHidden"

    invoke-direct {v12, v7, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    const/16 v28, 0x40

    move-object/from16 v29, v12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v28, v14

    const-string v14, "navigation"

    invoke-direct {v15, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v30, v15

    const-string v15, "screenLayout"

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    const/high16 v31, 0x40000000    # 2.0f

    move-object/from16 v32, v12

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v31, v11

    const-string v11, "fontScale"

    invoke-direct {v15, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const/16 v12, 0x200

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v33, v15

    const-string v15, "uiMode"

    invoke-direct {v11, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v34, v11

    const-string v11, "orientation"

    invoke-direct {v12, v15, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const/16 v15, 0x400

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v35, v12

    const-string v12, "screenSize"

    invoke-direct {v11, v15, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    const/16 v36, 0x800

    move-object/from16 v37, v11

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v36, v12

    const-string v12, "smallestScreenSize"

    invoke-direct {v15, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const/16 v12, 0x1000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v38, v15

    const-string v15, "density"

    invoke-direct {v11, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v15, 0x2000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v39, v11

    const-string v11, "layout_direction"

    invoke-direct {v12, v15, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0xf

    new-array v15, v11, [Landroid/util/Pair;

    aput-object v23, v15, v18

    aput-object v26, v15, v16

    aput-object v22, v15, v17

    aput-object v25, v15, v21

    aput-object v27, v15, v19

    const/16 v22, 0xf

    const/4 v11, 0x5

    aput-object v29, v15, v11

    const/16 v23, 0x6

    aput-object v30, v15, v23

    const/16 v25, 0x7

    aput-object v32, v15, v25

    aput-object v33, v15, v20

    const/16 v26, 0x9

    aput-object v34, v15, v26

    const/16 v27, 0xa

    aput-object v35, v15, v27

    const/16 v29, 0x5

    const/16 v11, 0xb

    aput-object v37, v15, v11

    const/16 v30, 0xc

    aput-object v38, v15, v30

    const/16 v32, 0xd

    aput-object v39, v15, v32

    const/16 v33, 0xe

    aput-object v12, v15, v33

    const-string v12, "configChanges"

    const/4 v11, 0x3

    const/16 v34, 0xb

    invoke-direct {v1, v6, v12, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v11, Landroid/util/Pair;

    const-string v12, "none"

    invoke-direct {v11, v3, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v35, v11

    const-string v11, "intoExisting"

    invoke-direct {v15, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v37, v15

    const-string v15, "always"

    invoke-direct {v11, v13, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v38, v11

    const-string v11, "never"

    invoke-direct {v15, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v39, v15

    const/4 v11, 0x4

    new-array v15, v11, [Landroid/util/Pair;

    aput-object v35, v15, v18

    aput-object v37, v15, v16

    aput-object v38, v15, v17

    const/16 v21, 0x3

    aput-object v39, v15, v21

    const-string v11, "documentLaunchMode"

    move-object/from16 v35, v14

    const/4 v14, 0x0

    invoke-direct {v1, v6, v11, v14, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v14, [Landroid/util/Pair;

    const-string v15, "enabled"

    const/4 v14, 0x2

    invoke-direct {v1, v6, v15, v14, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v11, "excludeFromRecents"

    move-object/from16 v38, v7

    move-object/from16 v37, v15

    const/4 v15, 0x0

    new-array v7, v15, [Landroid/util/Pair;

    invoke-direct {v1, v6, v11, v14, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v15, [Landroid/util/Pair;

    const-string v11, "exported"

    invoke-direct {v1, v6, v11, v14, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "finishOnTaskLaunch"

    move-object/from16 v39, v11

    new-array v11, v15, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v14, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v15, [Landroid/util/Pair;

    const-string v11, "hardwareAccelerated"

    invoke-direct {v1, v6, v11, v14, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v15, [Landroid/util/Pair;

    const-string v14, "icon"

    const/4 v15, 0x3

    invoke-direct {v1, v6, v14, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    move-object/from16 v40, v11

    const/4 v7, 0x0

    new-array v11, v7, [Landroid/util/Pair;

    const-string v7, "label"

    invoke-direct {v1, v6, v7, v15, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v11, Landroid/util/Pair;

    const-string v15, "standard"

    invoke-direct {v11, v3, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v41, v11

    const-string v11, "singleTop"

    invoke-direct {v15, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v42, v15

    const-string v15, "singleTask"

    invoke-direct {v11, v13, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v43, v11

    const-string v11, "singleInstance"

    invoke-direct {v15, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v44, v15

    const/4 v11, 0x4

    new-array v15, v11, [Landroid/util/Pair;

    const/4 v11, 0x0

    aput-object v41, v15, v11

    aput-object v42, v15, v16

    const/16 v17, 0x2

    aput-object v43, v15, v17

    const/16 v21, 0x3

    aput-object v44, v15, v21

    move-object/from16 v41, v7

    const-string v7, "launchMode"

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "maxRecents"

    new-array v15, v11, [Landroid/util/Pair;

    const/4 v11, 0x1

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v7, 0x0

    new-array v11, v7, [Landroid/util/Pair;

    const-string v15, "multiprocess"

    const/4 v7, 0x2

    invoke-direct {v1, v6, v15, v7, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v11, 0x0

    new-array v7, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v10, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "noHistory"

    move-object/from16 v42, v15

    new-array v15, v11, [Landroid/util/Pair;

    const/4 v11, 0x2

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "parentActivityName"

    const/4 v11, 0x0

    new-array v15, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v11, [Landroid/util/Pair;

    const-string v15, "permission"

    invoke-direct {v1, v6, v15, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v11, [Landroid/util/Pair;

    move-object/from16 v43, v15

    const-string v15, "process"

    invoke-direct {v1, v6, v15, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "relinquishTaskIdentity"

    move-object/from16 v44, v15

    new-array v15, v11, [Landroid/util/Pair;

    const/4 v11, 0x2

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v7, 0x0

    new-array v15, v7, [Landroid/util/Pair;

    const-string v7, "resizeableActivity"

    invoke-direct {v1, v6, v7, v11, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v11, Landroid/util/Pair;

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v45, v7

    const-string v7, "unspecified"

    invoke-direct {v11, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v15, "landscape"

    invoke-direct {v7, v3, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v46, v7

    const-string v7, "portrait"

    invoke-direct {v15, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    move-object/from16 v47, v11

    const-string v11, "user"

    invoke-direct {v7, v13, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v48, v7

    const-string v7, "behind"

    invoke-direct {v11, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    move-object/from16 v49, v11

    const-string v11, "sensor"

    invoke-direct {v7, v2, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v50, v7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v51, v15

    const-string v15, "nosensor"

    invoke-direct {v11, v7, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v52, v11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v53, v10

    const-string v10, "sensorLandscape"

    invoke-direct {v15, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v54, v15

    const-string v15, "sensorPortrait"

    invoke-direct {v10, v11, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const-string v15, "reverseLandscape"

    invoke-direct {v11, v4, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v55, v10

    const-string v10, "reversePortrait"

    invoke-direct {v4, v15, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v56, v4

    const-string v4, "fullSensor"

    invoke-direct {v10, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v57, v10

    const-string v10, "userLandscape"

    invoke-direct {v4, v15, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v58, v4

    const-string v4, "userPortrait"

    invoke-direct {v10, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v59, v10

    const-string v10, "fullUser"

    invoke-direct {v4, v15, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v60, v4

    const-string v4, "locked"

    invoke-direct {v10, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x10

    new-array v4, v4, [Landroid/util/Pair;

    const/16 v18, 0x0

    aput-object v47, v4, v18

    const/16 v16, 0x1

    aput-object v46, v4, v16

    const/16 v17, 0x2

    aput-object v51, v4, v17

    const/16 v21, 0x3

    aput-object v48, v4, v21

    const/16 v19, 0x4

    aput-object v49, v4, v19

    aput-object v50, v4, v29

    aput-object v52, v4, v23

    aput-object v54, v4, v25

    aput-object v55, v4, v20

    aput-object v11, v4, v26

    aput-object v56, v4, v27

    aput-object v57, v4, v34

    aput-object v58, v4, v30

    aput-object v59, v4, v32

    aput-object v60, v4, v33

    aput-object v10, v4, v22

    const-string v10, "screenOrientation"

    const/4 v11, 0x0

    invoke-direct {v1, v6, v10, v11, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v4, "stateNotNeeded"

    new-array v10, v11, [Landroid/util/Pair;

    const/4 v15, 0x2

    invoke-direct {v1, v6, v4, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v4, "supportsPictureInPicture"

    new-array v10, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v4, v11, [Landroid/util/Pair;

    const-string v10, "taskAffinity"

    invoke-direct {v1, v6, v10, v11, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v4, v11, [Landroid/util/Pair;

    const-string v15, "theme"

    const/4 v11, 0x3

    const/16 v18, 0x0

    invoke-direct {v1, v6, v15, v11, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v24, v4

    const-string v4, "splitActionBarWhenNarrow"

    invoke-direct {v11, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v47, v4

    move-object/from16 v46, v11

    const/4 v11, 0x2

    new-array v4, v11, [Landroid/util/Pair;

    aput-object v24, v4, v18

    const/16 v16, 0x1

    aput-object v46, v4, v16

    const-string v11, "uiOptions"

    move-object/from16 v24, v12

    const/4 v12, 0x0

    invoke-direct {v1, v6, v11, v12, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v4, Landroid/util/Pair;

    const-string v12, "stateUnspecified"

    invoke-direct {v4, v3, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    move-object/from16 v46, v4

    const-string v4, "stateUnchanged"

    invoke-direct {v12, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    move-object/from16 v48, v12

    const-string v12, "stateHidden"

    invoke-direct {v4, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    move-object/from16 v49, v4

    const-string v4, "stateAlwaysHidden"

    invoke-direct {v12, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    move-object/from16 v50, v12

    const-string v12, "stateVisible"

    invoke-direct {v4, v2, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    move-object/from16 v51, v4

    const-string v4, "stateAlwaysVisible"

    invoke-direct {v12, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v7, "adjustUnspecified"

    invoke-direct {v4, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    move-object/from16 v52, v4

    const-string v4, "adjustResize"

    invoke-direct {v7, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v9, "adjustPan"

    move-object/from16 v54, v7

    move-object/from16 v7, v38

    invoke-direct {v4, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v38, v4

    const-string v4, "adjustNothing"

    invoke-direct {v7, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v9, "isForwardNavigation"

    move-object/from16 v55, v7

    move-object/from16 v7, v35

    invoke-direct {v4, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0xb

    new-array v9, v7, [Landroid/util/Pair;

    const/16 v18, 0x0

    aput-object v46, v9, v18

    const/16 v16, 0x1

    aput-object v48, v9, v16

    const/16 v17, 0x2

    aput-object v49, v9, v17

    const/4 v7, 0x3

    aput-object v50, v9, v7

    const/16 v19, 0x4

    aput-object v51, v9, v19

    aput-object v12, v9, v29

    aput-object v52, v9, v23

    aput-object v54, v9, v25

    aput-object v38, v9, v20

    aput-object v55, v9, v26

    aput-object v4, v9, v27

    const-string v4, "windowSoftInputMode"

    invoke-direct {v1, v6, v4, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v4, "windowAnimationStyle"

    const/4 v12, 0x0

    new-array v9, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v4, v12, [Landroid/util/Pair;

    move-object/from16 v9, v37

    const/4 v7, 0x2

    invoke-direct {v1, v6, v9, v7, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v4, v12, [Landroid/util/Pair;

    move-object/from16 v12, v39

    invoke-direct {v1, v6, v12, v7, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v7, 0x0

    new-array v4, v7, [Landroid/util/Pair;

    const/4 v7, 0x3

    invoke-direct {v1, v6, v14, v7, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v4, 0x0

    new-array v12, v4, [Landroid/util/Pair;

    move-object/from16 v4, v41

    invoke-direct {v1, v6, v4, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v7, 0x0

    new-array v12, v7, [Landroid/util/Pair;

    move-object/from16 v35, v2

    move-object/from16 v2, v53

    invoke-direct {v1, v6, v2, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v12, v7, [Landroid/util/Pair;

    move-object/from16 v37, v5

    move-object/from16 v5, v43

    invoke-direct {v1, v6, v5, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v12, "targetActivity"

    move-object/from16 v38, v13

    new-array v13, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v12, v7, v13}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v12, v7, [Landroid/util/Pair;

    move-object/from16 v7, v31

    const/4 v13, 0x2

    invoke-direct {v1, v6, v7, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "allowBackup"

    move-object/from16 v18, v11

    const/4 v12, 0x0

    new-array v11, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v13, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "backupAgent"

    new-array v11, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v12, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "backupInForeground"

    new-array v11, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v13, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v12, [Landroid/util/Pair;

    move-object/from16 v13, v28

    const/4 v11, 0x3

    invoke-direct {v1, v6, v13, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "debuggable"

    new-array v11, v12, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v7, v13, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v12, [Landroid/util/Pair;

    const-string v11, "description"

    invoke-direct {v1, v6, v11, v12, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v12, [Landroid/util/Pair;

    const-string v12, "directBootAware"

    invoke-direct {v1, v6, v12, v13, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    move-object/from16 v28, v12

    const/4 v7, 0x0

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v12, "extractNativeLibs"

    move-object/from16 v31, v9

    new-array v9, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v12, v13, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "fullBackupContent"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "fullBackupOnly"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "hasCode"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    move-object/from16 v12, v40

    invoke-direct {v1, v6, v12, v13, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    const/4 v12, 0x3

    invoke-direct {v1, v6, v14, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "roundIcon"

    new-array v13, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v12, v13}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "isGame"

    new-array v12, v7, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "killAfterRestore"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "largeHeap"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    const/4 v12, 0x3

    invoke-direct {v1, v6, v4, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "logo"

    new-array v13, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v12, v13}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "manageSpaceActivity"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "networkSecurityConfig"

    new-array v12, v7, [Landroid/util/Pair;

    const/4 v13, 0x3

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v5, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "persistent"

    new-array v12, v7, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    move-object/from16 v12, v44

    invoke-direct {v1, v6, v12, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "restoreAnyVersion"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "requiredAccountType"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    move-object/from16 v12, v45

    invoke-direct {v1, v6, v12, v13, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "restrictedAccountType"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "supportsRtl"

    new-array v12, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v10, v7, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "testOnly"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v9, v7, [Landroid/util/Pair;

    const/4 v12, 0x3

    invoke-direct {v1, v6, v15, v12, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v9, Landroid/util/Pair;

    move-object/from16 v10, v24

    invoke-direct {v9, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    move-object/from16 v12, v47

    invoke-direct {v10, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v12, v13, [Landroid/util/Pair;

    aput-object v9, v12, v7

    const/16 v16, 0x1

    aput-object v10, v12, v16

    move-object/from16 v9, v18

    invoke-direct {v1, v6, v9, v7, v12}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "usesCleartextTraffic"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "vmSafeMode"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "multiArch"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "use32bitAbi"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v9, "defaultToDeviceProtectedStorage"

    new-array v10, v7, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v13, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v7, Landroid/util/Pair;

    const-string v9, "undefined"

    invoke-direct {v7, v3, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    const-string v12, "small"

    invoke-direct {v10, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const-string v13, "normal"

    move-object/from16 v15, v38

    invoke-direct {v12, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v24, v7

    new-instance v7, Landroid/util/Pair;

    move-object/from16 v38, v10

    const-string v10, "large"

    move-object/from16 v40, v12

    move-object/from16 v12, v37

    invoke-direct {v7, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    move-object/from16 v37, v7

    const-string v7, "xlarge"

    move-object/from16 v41, v9

    move-object/from16 v9, v35

    invoke-direct {v10, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v35, v10

    const/4 v7, 0x5

    new-array v10, v7, [Landroid/util/Pair;

    const/4 v7, 0x0

    aput-object v24, v10, v7

    const/16 v16, 0x1

    aput-object v38, v10, v16

    const/16 v17, 0x2

    aput-object v40, v10, v17

    const/16 v21, 0x3

    aput-object v37, v10, v21

    const/16 v19, 0x4

    aput-object v35, v10, v19

    move-object/from16 v35, v9

    move-object/from16 v9, v36

    invoke-direct {v1, v6, v9, v7, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v7, Landroid/util/Pair;

    const/16 v9, 0x78

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "ldpi"

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0xa0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v24, v7

    const-string v7, "mdpi"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0xd5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v36, v9

    const-string v9, "tvdpi"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0xf0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v37, v7

    const-string v7, "hdpi"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x140

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v38, v9

    const-string v9, "xhdpi"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0x1e0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v40, v7

    const-string v7, "xxhdpi"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x280

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v43, v9

    const-string v9, "xxxhigh"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0x104

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v45, v7

    const-string v7, "260"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x118

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v46, v9

    const-string v9, "280"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0x12c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v47, v7

    const-string v7, "300"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x154

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v48, v9

    const-string v9, "340"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0x168

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v49, v7

    const-string v7, "360"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x190

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v50, v9

    const-string v9, "400"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0x1a4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v51, v7

    const-string v7, "420"

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/16 v10, 0x230

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v52, v9

    const-string v9, "560"

    invoke-direct {v7, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0xf

    new-array v9, v9, [Landroid/util/Pair;

    const/16 v18, 0x0

    aput-object v24, v9, v18

    const/16 v16, 0x1

    aput-object v36, v9, v16

    const/16 v17, 0x2

    aput-object v37, v9, v17

    const/16 v21, 0x3

    aput-object v38, v9, v21

    const/16 v19, 0x4

    aput-object v40, v9, v19

    const/16 v29, 0x5

    aput-object v43, v9, v29

    aput-object v45, v9, v23

    aput-object v46, v9, v25

    aput-object v47, v9, v20

    aput-object v48, v9, v26

    aput-object v49, v9, v27

    const/16 v34, 0xb

    aput-object v50, v9, v34

    aput-object v51, v9, v30

    aput-object v52, v9, v32

    aput-object v7, v9, v33

    const-string v7, "screenDensity"

    const/4 v10, 0x0

    invoke-direct {v1, v6, v7, v10, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "scheme"

    new-array v9, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v10, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "host"

    new-array v9, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v10, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "port"

    new-array v9, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v10, v9}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    const-string v9, "path"

    invoke-direct {v1, v6, v9, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    move-object/from16 v37, v12

    const-string v12, "pathPattern"

    invoke-direct {v1, v6, v12, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    move-object/from16 v38, v15

    const-string v15, "pathPrefix"

    invoke-direct {v1, v6, v15, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "mimeType"

    move-object/from16 v20, v8

    new-array v8, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v10, v8}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v12, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v10, [Landroid/util/Pair;

    invoke-direct {v1, v6, v15, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "functionalTest"

    new-array v8, v10, [Landroid/util/Pair;

    const/4 v10, 0x2

    invoke-direct {v1, v6, v7, v10, v8}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "handleProfiling"

    move-object/from16 v22, v3

    const/4 v8, 0x0

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    const/4 v7, 0x3

    invoke-direct {v1, v6, v14, v7, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v7, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "targetPackage"

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "resource"

    new-array v7, v8, [Landroid/util/Pair;

    const/4 v10, 0x3

    invoke-direct {v1, v6, v3, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "value"

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v14, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "priority"

    new-array v7, v8, [Landroid/util/Pair;

    const/4 v10, 0x1

    invoke-direct {v1, v6, v3, v10, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v15, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v12, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v5, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    const-string v7, "readPermission"

    invoke-direct {v1, v6, v7, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    const-string v9, "writePermission"

    invoke-direct {v1, v6, v9, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    const/4 v12, 0x3

    invoke-direct {v1, v6, v11, v12, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v14, v12, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v12, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "permissionGroup"

    new-array v10, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v8, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v3, Landroid/util/Pair;

    move-object/from16 v8, v22

    invoke-direct {v3, v8, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    const-string v12, "dangerous"

    move-object/from16 v13, v20

    invoke-direct {v10, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const-string v15, "signature"

    move-object/from16 v20, v3

    move-object/from16 v3, v38

    invoke-direct {v12, v3, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    move-object/from16 v22, v10

    const-string v10, "signatureOrSystem"

    move-object/from16 v23, v12

    move-object/from16 v12, v37

    invoke-direct {v15, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v24, v15

    const/4 v10, 0x4

    new-array v15, v10, [Landroid/util/Pair;

    const/4 v10, 0x0

    aput-object v20, v15, v10

    const/16 v16, 0x1

    aput-object v22, v15, v16

    const/16 v17, 0x2

    aput-object v23, v15, v17

    const/4 v10, 0x3

    aput-object v24, v15, v10

    const-string v10, "protectionLevel"

    const/4 v12, 0x0

    invoke-direct {v1, v6, v10, v12, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    const/4 v15, 0x3

    invoke-direct {v1, v6, v11, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v14, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v12, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v14, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v12, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v10, "authorities"

    new-array v15, v12, [Landroid/util/Pair;

    invoke-direct {v1, v6, v10, v12, v15}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v10, v12, [Landroid/util/Pair;

    move-object/from16 v12, v28

    const/4 v15, 0x2

    invoke-direct {v1, v6, v12, v15, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const/4 v10, 0x0

    new-array v3, v10, [Landroid/util/Pair;

    move-object/from16 v10, v31

    invoke-direct {v1, v6, v10, v15, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    move-object/from16 v20, v13

    const/4 v3, 0x0

    new-array v13, v3, [Landroid/util/Pair;

    move-object/from16 v3, v39

    invoke-direct {v1, v6, v3, v15, v13}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v13, "grantUriPermissions"

    move-object/from16 v22, v8

    move-object/from16 v18, v11

    const/4 v8, 0x0

    new-array v11, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v13, v15, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    const/4 v15, 0x3

    invoke-direct {v1, v6, v14, v15, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v11, "initOrder"

    new-array v13, v8, [Landroid/util/Pair;

    const/4 v15, 0x1

    invoke-direct {v1, v6, v11, v15, v13}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    const/4 v15, 0x3

    invoke-direct {v1, v6, v4, v15, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    move-object/from16 v15, v42

    const/4 v13, 0x2

    invoke-direct {v1, v6, v15, v13, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v5, v8, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    move-object/from16 v13, v44

    invoke-direct {v1, v6, v13, v8, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v11, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v7, v8, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v7, "syncable"

    new-array v11, v8, [Landroid/util/Pair;

    const/4 v15, 0x2

    invoke-direct {v1, v6, v7, v15, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v9, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v12, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v10, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    const/4 v15, 0x3

    invoke-direct {v1, v6, v14, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v5, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v13, v8, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    move-object/from16 v9, v18

    const/4 v15, 0x3

    invoke-direct {v1, v6, v9, v15, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    const/4 v11, 0x2

    invoke-direct {v1, v6, v12, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v10, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    const/4 v15, 0x3

    invoke-direct {v1, v6, v14, v15, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "isolatedProcess"

    new-array v7, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v11, v7}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v15, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v5, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v13, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v8, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "resizeable"

    new-array v4, v8, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "smallScreens"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "normalScreens"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "largeScreens"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "xlargeScreens"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "anyDensity"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "requiresSmallestWidthDp"

    new-array v4, v8, [Landroid/util/Pair;

    const/4 v10, 0x1

    invoke-direct {v1, v6, v3, v10, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "compatibleWidthLimitDp"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v10, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "largestWidthLimitDp"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v10, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "reqFiveWayNav"

    new-array v4, v8, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "reqHardKeyboard"

    new-array v4, v8, [Landroid/util/Pair;

    invoke-direct {v1, v6, v3, v13, v4}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v3, Landroid/util/Pair;

    move-object/from16 v8, v22

    move-object/from16 v4, v41

    invoke-direct {v3, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    const-string v7, "nokeys"

    move-object/from16 v13, v20

    invoke-direct {v5, v13, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v9, "qwerty"

    move-object/from16 v15, v38

    invoke-direct {v7, v15, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const-string v10, "twelvekey"

    move-object/from16 v12, v37

    invoke-direct {v9, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x4

    new-array v10, v11, [Landroid/util/Pair;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/16 v16, 0x1

    aput-object v5, v10, v16

    const/16 v17, 0x2

    aput-object v7, v10, v17

    const/16 v21, 0x3

    aput-object v9, v10, v21

    const-string v3, "reqKeyboardType"

    invoke-direct {v1, v6, v3, v11, v10}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    const-string v7, "nonav"

    invoke-direct {v5, v13, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v9, "dpad"

    invoke-direct {v7, v15, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const-string v10, "trackball"

    invoke-direct {v9, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    const-string v11, "wheel"

    move-object/from16 v14, v35

    invoke-direct {v10, v14, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/util/Pair;

    const/4 v14, 0x0

    aput-object v3, v11, v14

    const/16 v16, 0x1

    aput-object v5, v11, v16

    const/16 v17, 0x2

    aput-object v7, v11, v17

    const/16 v21, 0x3

    aput-object v9, v11, v21

    const/16 v19, 0x4

    aput-object v10, v11, v19

    const-string v3, "reqNavigation"

    invoke-direct {v1, v6, v3, v14, v11}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "notouch"

    invoke-direct {v4, v13, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    const-string v7, "stylus"

    invoke-direct {v5, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v8, "finger"

    invoke-direct {v7, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x4

    new-array v8, v11, [Landroid/util/Pair;

    const/4 v11, 0x0

    aput-object v3, v8, v11

    const/16 v16, 0x1

    aput-object v4, v8, v16

    const/16 v17, 0x2

    aput-object v5, v8, v17

    const/16 v21, 0x3

    aput-object v7, v8, v21

    const-string v3, "reqTouchScreen"

    invoke-direct {v1, v6, v3, v11, v8}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v11, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    const-string v4, "required"

    const/4 v13, 0x2

    invoke-direct {v1, v6, v4, v13, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v3, "glEsVersion"

    new-array v5, v11, [Landroid/util/Pair;

    const/4 v10, 0x1

    invoke-direct {v1, v6, v3, v10, v5}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v11, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v4, v13, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v11, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    const-string v4, "maxSdkVersion"

    const/4 v10, 0x1

    invoke-direct {v1, v6, v4, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v11, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v2, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v10, v2}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v2, "minSdkVersion"

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v2, "targetSdkVersion"

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v10, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    new-array v2, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v4, v10, v2}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v2, "resumeWhilePausing"

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v11, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v2, "showForAllUsers"

    new-array v3, v11, [Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-direct {v1, v6, v2, v13, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    new-instance v1, Lg/ddf;

    const-string v2, "finishOnCloseSystemDialogs"

    new-array v3, v11, [Landroid/util/Pair;

    invoke-direct {v1, v6, v2, v13, v3}, Lg/ddf;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/util/Pair;)V

    invoke-static {v0, v1}, Lg/bwa;->i(Ljava/util/HashMap;Lg/ddf;)V

    return-void
.end method

.method public static b(Lg/hbj;Lg/hbj;Ljava/lang/String;)V
    .locals 12

    iget-object p1, p1, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbj;

    iget-object v1, p0, Lg/hbj;->h:Ljava/lang/String;

    iget-object v2, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    const-string v3, "manifest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uses-sdk"

    iget-object v3, v0, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uses-split"

    iget-object v3, v0, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/hbj;->h:Ljava/lang/String;

    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-static {v0, p2}, Lg/bwa;->q(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/hbj;

    iget-object v7, v0, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "queries"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "supports-screens"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "compatible-screens"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, v6, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    if-eqz v1, :cond_3

    invoke-static {v6, p2}, Lg/bwa;->q(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_6
    move-object v4, v6

    :cond_7
    const-string v1, "name"

    const-string v5, "android"

    if-eqz v4, :cond_10

    iget-object v2, v4, Lg/hbj;->g:Ljava/util/ArrayList;

    iget-object v6, v0, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aow;

    iget-object v8, v4, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v7, Lg/aow;->c:Ljava/lang/String;

    iget-object v10, v7, Lg/aow;->a:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "hasCode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "extractNativeLibs"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "classLoader"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "splitName"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    iget-object v9, v7, Lg/aow;->c:Ljava/lang/String;

    iget-object v10, v7, Lg/aow;->a:Ljava/lang/String;

    invoke-static {v4, v9, v10}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    iget-object v8, v4, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object v11, v7, Lg/aow;->b:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v7, Lg/aow;->c:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "backupAgent"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "manageSpaceActivity"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "appComponentFactory"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    const-string v11, "targetActivity"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "parentActivityName"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    invoke-static {v9, p2}, Lg/bwa;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lg/aow;->b:Ljava/lang/String;

    invoke-static {v7, p2}, Lg/bwa;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_2

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lg/bwa;->f(Lg/hbj;Lg/hbj;Ljava/lang/String;)Lg/coz;

    move-result-object p0

    throw p0

    :cond_e
    invoke-static {v4, v0, p2}, Lg/bwa;->b(Lg/hbj;Lg/hbj;Ljava/lang/String;)V

    iget-object v0, v0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    if-eqz v2, :cond_14

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hbj;

    invoke-static {v4, v0}, Lg/bwa;->r(Lg/hbj;Lg/hbj;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hbj;

    invoke-static {v2, v0}, Lg/bwa;->r(Lg/hbj;Lg/hbj;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v2, v0}, Lg/bwa;->m(Lg/hbj;Lg/hbj;)V

    goto :goto_4

    :cond_14
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hbj;

    invoke-static {v0, v5, v1}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lg/hbj;->h:Ljava/lang/String;

    iget-object v7, v3, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v4, :cond_15

    invoke-static {v3, v5, v1}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_6

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lg/bwa;->f(Lg/hbj;Lg/hbj;Ljava/lang/String;)Lg/coz;

    move-result-object p0

    throw p0

    :cond_17
    iput-object p0, v0, Lg/hbj;->d:Lg/hbj;

    iget-object v1, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lg/hbj;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a

    invoke-static {v1}, Lg/awf;->m(Ljava/lang/String;)Lg/hbj;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v0, v1, v5}, Lg/bwa;->s(Lg/hbj;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3, v1}, Lg/bwa;->p(Lg/hbj;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-eqz v2, :cond_8

    array-length v8, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_8

    aget-object v10, v2, v9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "split"

    if-nez v11, :cond_7

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v10}, Lg/awf;->m(Ljava/lang/String;)Lg/hbj;

    move-result-object v11

    invoke-static {v11, v0, v10, v1}, Lg/bwa;->s(Lg/hbj;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v11}, Lg/bwa;->j(Lg/hbj;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v11, v10}, Lg/bwa;->p(Lg/hbj;Ljava/lang/String;)V

    iget-object v12, v11, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/aow;

    iget-object v14, v13, Lg/aow;->c:Ljava/lang/String;

    iget-object v15, v13, Lg/aow;->a:Ljava/lang/String;

    const-string v5, "xmlns"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v3, v5, v15}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, v3, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget-object v13, v13, Lg/aow;->b:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_3
    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v11, v0}, Lg/bwa;->f(Lg/hbj;Lg/hbj;Ljava/lang/String;)Lg/coz;

    move-result-object v0

    throw v0

    :cond_3
    const-string v5, "android"

    const-string v12, "versionCode"

    invoke-static {v11, v5, v12}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v5, v12}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v13, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v3, v11, v12}, Lg/bwa;->f(Lg/hbj;Lg/hbj;Ljava/lang/String;)Lg/coz;

    move-result-object v0

    throw v0

    :cond_5
    :goto_4
    invoke-static {v3, v11, v0}, Lg/bwa;->b(Lg/hbj;Lg/hbj;Ljava/lang/String;)V

    iget-object v5, v3, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lg/coz;

    invoke-direct {v0, v12, v10, v4}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_7
    new-instance v0, Lg/coz;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1, v4}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_8
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v3, Lg/hbj;->i:Z

    invoke-static {v3}, Lg/bwa;->k(Lg/hbj;)V

    return-object v3

    :cond_a
    new-instance v1, Lg/coz;

    const-string v2, "base"

    invoke-direct {v1, v2, v0, v4}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lg/bwa;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1, v0, p0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lg/hbj;Lg/hbj;Ljava/lang/String;)Lg/coz;
    .locals 2

    new-instance v0, Lg/coz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " \u2192 "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "conflict"

    invoke-direct {v0, p2, p0, p1}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static g(Lg/atk;Ljava/lang/String;)Lg/hbj;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lg/bwa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lg/hbj;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lg/coz; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lg/coz;

    const-string v1, "read"

    invoke-direct {v0, v1, p1, p0}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    throw p0

    :goto_1
    new-instance v0, Lg/coz;

    const-string v1, "base"

    invoke-direct {v0, v1, p1, p0}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static h(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lg/bwa;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-static {p0, v1, v0}, Lg/bwa;->n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Namespace conflict"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Lg/aow;

    invoke-direct {v2, v0, p1}, Lg/aow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lg/aow;->c:Ljava/lang/String;

    iget-object p0, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static i(Ljava/util/HashMap;Lg/ddf;)V
    .locals 1

    iget-object v0, p1, Lg/ddf;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j(Lg/hbj;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aow;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/aow;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "split"

    iget-object v2, v0, Lg/aow;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lg/aow;->b:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lg/hbj;)V
    .locals 6

    iget-object v0, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hbj;

    if-eqz v4, :cond_0

    invoke-static {v4}, Lg/bwa;->k(Lg/hbj;)V

    iget v5, v4, Lg/hbj;->a:I

    add-int/2addr v3, v5

    iget v4, v4, Lg/hbj;->f:I

    if-le v4, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_1
    iput v3, p0, Lg/hbj;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lg/hbj;->f:I

    return-void
.end method

.method public static l(Landroid/content/res/XmlResourceParser;)Lg/hbj;
    .locals 18

    move-object/from16 v1, p0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_18

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, ""

    if-ne v0, v6, :cond_13

    new-instance v8, Lg/hbj;

    invoke-static {v1}, Lg/bwa;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lg/hbj;-><init>(Ljava/lang/String;)V

    const-string v9, "http://schemas.android.com/apk/res/android"

    const-string v10, "android"

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    new-instance v0, Lg/aow;

    invoke-direct {v0, v10, v9}, Lg/aow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "xmlns"

    iput-object v2, v0, Lg/aow;->c:Ljava/lang/String;

    iget-object v2, v8, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Multiple roots"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v3, v8, Lg/hbj;->d:Lg/hbj;

    iget-object v0, v3, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/bwa;->h(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const/4 v11, 0x0

    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v11, v0, :cond_12

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_3

    if-nez v12, :cond_4

    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_b

    :cond_4
    new-instance v13, Lg/aow;

    invoke-direct {v13, v0, v12}, Lg/aow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lg/bwa;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ddf;

    if-eqz v0, :cond_d

    iget-object v14, v0, Lg/ddf;->a:[Landroid/util/Pair;

    iget-object v15, v0, Lg/ddf;->b:Ljava/lang/String;

    iput-object v15, v13, Lg/aow;->c:Ljava/lang/String;

    invoke-static {v14}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    :try_start_0
    const-string v15, "0x"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "0X"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5

    goto :goto_3

    :cond_5
    const-string v15, "0"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_6

    const/16 v15, 0x8

    invoke-static {v12, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :catch_0
    move-exception v0

    const/16 v17, 0x1

    goto/16 :goto_8

    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x10

    invoke-static {v12, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget v0, v0, Lg/ddf;->d:I

    if-eqz v0, :cond_8

    if-nez v12, :cond_9

    :cond_8
    const/16 v17, 0x1

    goto :goto_6

    :cond_9
    if-ne v0, v5, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v15, v14

    const/4 v3, 0x0

    const/16 v16, 0x1

    :goto_5
    if-ge v3, v15, :cond_c

    const/16 v17, 0x1

    aget-object v4, v14, v3

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v12

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_b

    if-nez v16, :cond_a

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto :goto_5

    :cond_c
    const/16 v17, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lg/aow;->b:Ljava/lang/String;

    goto :goto_9

    :cond_d
    const/16 v17, 0x1

    goto :goto_9

    :goto_6
    array-length v0, v14

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_f

    aget-object v4, v14, v3

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v12, :cond_e

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v13, Lg/aow;->b:Ljava/lang/String;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :goto_8
    const-class v3, Lg/bwa;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_9
    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput-object v7, v13, Lg/aow;->c:Ljava/lang/String;

    goto :goto_a

    :cond_10
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iput-object v10, v13, Lg/aow;->c:Ljava/lang/String;

    goto :goto_a

    :cond_11
    invoke-static {v2, v0}, Lg/bwa;->h(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lg/aow;->c:Ljava/lang/String;

    :goto_a
    iget-object v0, v8, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_12
    move-object v3, v8

    goto :goto_d

    :cond_13
    const/4 v4, 0x4

    if-ne v0, v4, :cond_15

    if-eqz v3, :cond_15

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lg/hbj;->c:Ljava/lang/String;

    if-nez v4, :cond_14

    goto :goto_c

    :cond_14
    move-object v7, v4

    :goto_c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lg/hbj;->c:Ljava/lang/String;

    goto :goto_d

    :cond_15
    const/4 v4, 0x3

    if-ne v0, v4, :cond_17

    if-eqz v3, :cond_16

    iget-object v0, v3, Lg/hbj;->h:Ljava/lang/String;

    invoke-static {v1}, Lg/bwa;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v3, Lg/hbj;->d:Lg/hbj;

    move-object v3, v0

    goto :goto_d

    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unbalanced XML"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_18
    const/16 v17, 0x1

    if-eqz v2, :cond_19

    if-nez v3, :cond_19

    const-string v0, "manifest"

    iget-object v1, v2, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v2}, Lg/bwa;->j(Lg/hbj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v2, Lg/hbj;->i:Z

    invoke-static {v2}, Lg/bwa;->k(Lg/hbj;)V

    return-object v2

    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Incomplete manifest"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m(Lg/hbj;Lg/hbj;)V
    .locals 3

    iget-object v0, p1, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hbj;

    iget-object v2, p1, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hbj;

    invoke-static {v1, v2}, Lg/bwa;->m(Lg/hbj;Lg/hbj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static n(Lg/hbj;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aow;

    iget-object v1, v0, Lg/aow;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/aow;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lg/aow;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "android"

    return-object p0

    :cond_0
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "xml"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ns"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lg/hbj;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbj;

    invoke-static {v0, p1}, Lg/bwa;->p(Lg/hbj;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static q(Lg/hbj;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg/hbj;->h:Ljava/lang/String;

    iget-object v1, p0, Lg/hbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "activity-alias"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "receiver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    iget-object p0, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "conflict"

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aow;

    const-string v5, "android"

    iget-object v6, v3, Lg/aow;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "name"

    iget-object v6, v3, Lg/aow;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p0, v3, Lg/aow;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p0, p1}, Lg/bwa;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lg/aow;->b:Ljava/lang/String;

    const-string p1, ":"

    invoke-static {v0, p1, p0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lg/coz;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v2}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    :cond_7
    new-instance p0, Lg/coz;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v2}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4
        -0x3adbfa0f -> :sswitch_3
        -0x30341611 -> :sswitch_2
        0x2f1ad612 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Lg/hbj;Lg/hbj;)Z
    .locals 8

    if-ne p0, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    iget-object v1, p0, Lg/hbj;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v3, p1, Lg/hbj;->e:Ljava/util/ArrayList;

    iget-object v4, p1, Lg/hbj;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Lg/hbj;->h:Ljava/lang/String;

    iget-object v6, p1, Lg/hbj;->h:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object p0, p0, Lg/hbj;->c:Ljava/lang/String;

    iget-object p1, p1, Lg/hbj;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eq p0, p1, :cond_6

    goto/16 :goto_7

    :cond_6
    if-lez p0, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/aow;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/aow;

    if-eqz v5, :cond_8

    iget-object v6, p1, Lg/aow;->a:Ljava/lang/String;

    iget-object v7, v5, Lg/aow;->a:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p1, Lg/aow;->c:Ljava/lang/String;

    iget-object v7, v5, Lg/aow;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p1, Lg/aow;->b:Ljava/lang/String;

    iget-object v5, v5, Lg/aow;->b:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_3

    :cond_a
    const/4 p0, 0x0

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    if-eq p0, p1, :cond_c

    goto :goto_7

    :cond_c
    if-lez p0, :cond_e

    const/4 p1, 0x0

    :goto_5
    if-ge p1, p0, :cond_e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hbj;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hbj;

    invoke-static {v2, v4}, Lg/bwa;->r(Lg/hbj;Lg/hbj;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_7
    return v0
.end method

.method public static s(Lg/hbj;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "manifest"

    iget-object v1, p0, Lg/hbj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/hbj;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aow;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lg/aow;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "package"

    iget-object v4, v2, Lg/aow;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v2, Lg/aow;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lg/bwa;->j(Lg/hbj;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-ne p3, p0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance p0, Lg/coz;

    if-eqz p3, :cond_5

    const-string p1, "split"

    goto :goto_2

    :cond_5
    const-string p1, "base"

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lg/coz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method
