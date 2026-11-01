.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez p2, :cond_0

    goto/16 :goto_2d

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "androidx.profileinstaller.action.INSTALL_PROFILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/16 v6, 0x18

    const/4 v7, 0x0

    if-eqz v3, :cond_18

    new-instance v10, Lg/xh;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lg/xh;-><init>(I)V

    new-instance v11, Lg/eie;

    const/16 v0, 0xf

    invoke-direct {v11, v0, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_f

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    sget-object v8, Lg/erl;->u:[B

    new-instance v13, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/profiles/cur/0"

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "primary.prof"

    invoke-direct {v13, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v8

    new-instance v8, Lg/fao;

    const-string v0, "dexopt/baseline.prof"

    invoke-direct/range {v8 .. v13}, Lg/fao;-><init>(Landroid/content/res/AssetManager;Lg/xh;Lg/eie;Ljava/lang/String;Ljava/io/File;)V

    iget-object v4, v8, Lg/fao;->f:Ljava/lang/Object;

    check-cast v4, [B

    if-nez v4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v0}, Lg/fao;->s(ILjava/io/Serializable;)V

    goto/16 :goto_2a

    :cond_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v12, 0x4

    if-eqz v10, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8, v12, v7}, Lg/fao;->s(ILjava/io/Serializable;)V

    goto/16 :goto_2a

    :cond_2
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8, v12, v7}, Lg/fao;->s(ILjava/io/Serializable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2a

    :catch_0
    move-object v3, v7

    goto/16 :goto_29

    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, v8, Lg/fao;->c:Z

    const/4 v13, 0x6

    :try_start_2
    invoke-virtual {v8, v9, v0}, Lg/fao;->r(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v11, v13, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    :goto_0
    move-object v13, v7

    :goto_1
    const-string v10, "Invalid magic"

    const/16 v7, 0x8

    if-eqz v13, :cond_5

    :try_start_3
    invoke-static {v13, v12}, Lg/acw;->bg(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v13, v12}, Lg/acw;->bg(Ljava/io/InputStream;I)[B

    move-result-object v0

    iget-object v12, v8, Lg/fao;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v0, v12}, Lg/erl;->an(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lg/xj;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v11, v7, v0}, Lg/eie;->r(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    :try_start_8
    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :goto_5
    const/4 v12, 0x0

    :goto_6
    iput-object v12, v8, Lg/fao;->d:Ljava/lang/Object;

    goto :goto_9

    :goto_7
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    :goto_8
    throw v2

    :cond_5
    :goto_9
    iget-object v0, v8, Lg/fao;->d:Ljava/lang/Object;

    check-cast v0, [Lg/xj;

    if-eqz v0, :cond_c

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v6, :cond_6

    goto/16 :goto_12

    :cond_6
    const/16 v13, 0x1f

    if-lt v12, v13, :cond_7

    goto :goto_a

    :cond_7
    if-eq v12, v6, :cond_8

    const/16 v6, 0x19

    if-eq v12, v6, :cond_8

    goto :goto_12

    :cond_8
    :goto_a
    :try_start_a
    const-string v6, "dexopt/baseline.profm"

    invoke-virtual {v8, v9, v6}, Lg/fao;->r(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_8

    if-eqz v6, :cond_a

    :try_start_b
    sget-object v9, Lg/erl;->p:[B

    const/4 v12, 0x4

    invoke-static {v6, v12}, Lg/acw;->bg(Ljava/io/InputStream;I)[B

    move-result-object v13

    invoke-static {v9, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v6, v12}, Lg/acw;->bg(Ljava/io/InputStream;I)[B

    move-result-object v9

    invoke-static {v6, v9, v4, v0}, Lg/erl;->ad(Ljava/io/FileInputStream;[B[B[Lg/xj;)[Lg/xj;

    move-result-object v0

    iput-object v0, v8, Lg/fao;->d:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_8

    move-object v0, v8

    goto :goto_11

    :catch_8
    move-exception v0

    const/4 v4, 0x0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_b

    :cond_9
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_b
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_f
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v4

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_10

    :goto_d
    iput-object v4, v8, Lg/fao;->d:Ljava/lang/Object;

    invoke-virtual {v11, v7, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_10

    :goto_e
    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_10

    :goto_f
    const/16 v4, 0x9

    invoke-virtual {v11, v4, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    :cond_b
    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_c

    move-object v8, v0

    :cond_c
    :goto_12
    iget-object v0, v8, Lg/fao;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lg/eie;

    iget-object v0, v8, Lg/fao;->d:Ljava/lang/Object;

    check-cast v0, [Lg/xj;

    iget-object v6, v8, Lg/fao;->f:Ljava/lang/Object;

    check-cast v6, [B

    const-string v9, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    if-eqz v0, :cond_10

    if-nez v6, :cond_d

    goto :goto_19

    :cond_d
    iget-boolean v10, v8, Lg/fao;->c:Z

    if-eqz v10, :cond_f

    :try_start_10
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_b

    :try_start_11
    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v10, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v10, v6, v0}, Lg/erl;->at(Ljava/io/ByteArrayOutputStream;[B[Lg/xj;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lg/eie;->r(ILjava/lang/Object;)V

    iput-object v3, v8, Lg/fao;->d:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    goto :goto_16

    :catch_c
    move-exception v0

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v3, v0

    goto :goto_14

    :cond_e
    :try_start_13
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v8, Lg/fao;->g:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_b

    :goto_13
    const/4 v3, 0x0

    goto :goto_18

    :goto_14
    :try_start_15
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception v0

    :try_start_16
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_b

    :goto_16
    invoke-virtual {v4, v7, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_13

    :goto_17
    invoke-virtual {v4, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto :goto_13

    :goto_18
    iput-object v3, v8, Lg/fao;->d:Ljava/lang/Object;

    goto :goto_19

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_19
    iget-object v0, v8, Lg/fao;->g:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_11

    :goto_1a
    const/4 v4, 0x0

    goto/16 :goto_27

    :cond_11
    iget-boolean v3, v8, Lg/fao;->c:Z

    if-eqz v3, :cond_16

    :try_start_17
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, v8, Lg/fao;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v7, :cond_13

    :try_start_1b
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_12

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1b

    :cond_12
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lg/fao;->s(ILjava/io/Serializable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    iput-object v9, v8, Lg/fao;->g:Ljava/lang/Object;

    iput-object v9, v8, Lg/fao;->d:Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_27

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    goto :goto_28

    :catch_d
    move-exception v0

    goto :goto_24

    :catch_e
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, 0x6

    goto :goto_26

    :catchall_6
    move-exception v0

    move-object v4, v0

    goto :goto_22

    :catchall_7
    move-exception v0

    move-object v6, v0

    goto :goto_20

    :catchall_8
    move-exception v0

    move-object v7, v0

    goto :goto_1e

    :catchall_9
    move-exception v0

    move-object v9, v0

    goto :goto_1c

    :cond_13
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Unable to acquire a lock on the underlying file channel."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    :goto_1c
    if-eqz v7, :cond_14

    :try_start_21
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_1d

    :catchall_a
    move-exception v0

    :try_start_22
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_1d
    throw v9
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    :goto_1e
    if-eqz v6, :cond_15

    :try_start_23
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    goto :goto_1f

    :catchall_b
    move-exception v0

    :try_start_24
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_1f
    throw v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :goto_20
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    goto :goto_21

    :catchall_c
    move-exception v0

    :try_start_26
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :goto_22
    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    goto :goto_23

    :catchall_d
    move-exception v0

    :try_start_28
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v4
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_d
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    :goto_24
    :try_start_29
    invoke-virtual {v8, v5, v0}, Lg/fao;->s(ILjava/io/Serializable;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    const/4 v3, 0x0

    :goto_25
    iput-object v3, v8, Lg/fao;->g:Ljava/lang/Object;

    iput-object v3, v8, Lg/fao;->d:Ljava/lang/Object;

    goto/16 :goto_1a

    :goto_26
    :try_start_2a
    invoke-virtual {v8, v4, v0}, Lg/fao;->s(ILjava/io/Serializable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    goto :goto_25

    :goto_27
    if-eqz v4, :cond_17

    invoke-static {v14, v15}, Lg/cro;->au(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    goto :goto_2b

    :catchall_e
    move-exception v0

    :goto_28
    iput-object v3, v8, Lg/fao;->g:Ljava/lang/Object;

    iput-object v3, v8, Lg/fao;->d:Ljava/lang/Object;

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_29
    invoke-virtual {v8, v12, v3}, Lg/fao;->s(ILjava/io/Serializable;)V

    :goto_2a
    const/4 v4, 0x0

    :cond_17
    :goto_2b
    invoke-static {v2, v4}, Lg/elr;->f(Landroid/content/Context;Z)V

    goto/16 :goto_2d

    :catch_f
    move-exception v0

    invoke-virtual {v11, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lg/elr;->f(Landroid/content/Context;Z)V

    goto/16 :goto_2d

    :cond_18
    const-string v3, "androidx.profileinstaller.action.SKIP_FILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v3, "EXTRA_SKIP_FILE_OPERATION"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WRITE_SKIP_FILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lg/eie;

    const/16 v0, 0xf

    invoke-direct {v3, v0, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v10, 0x0

    :try_start_2b
    invoke-virtual {v6, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2b} :catch_10

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lg/cro;->au(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lg/eie;->r(ILjava/lang/Object;)V

    goto/16 :goto_2d

    :catch_10
    move-exception v0

    invoke-virtual {v3, v5, v0}, Lg/eie;->r(ILjava/lang/Object;)V

    goto/16 :goto_2d

    :cond_19
    const-string v3, "DELETE_SKIP_FILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto/16 :goto_2d

    :cond_1a
    const-string v3, "androidx.profileinstaller.action.SAVE_PROFILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v0, Lg/eie;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2, v4}, Landroid/os/Process;->sendSignal(II)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lg/eie;->r(ILjava/lang/Object;)V

    return-void

    :cond_1b
    const/4 v3, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Lg/eie;->r(ILjava/lang/Object;)V

    return-void

    :cond_1c
    const-string v3, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v3, "EXTRA_BENCHMARK_OPERATION"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lg/eie;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    const-string v4, "DROP_SHADER_CACHE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v0, v4, :cond_1d

    invoke-static {v2}, Lg/o;->v(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_2c

    :cond_1d
    if-lt v0, v6, :cond_1e

    invoke-static {v2}, Lg/o;->v(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_2c

    :cond_1e
    const/16 v4, 0x17

    if-ne v0, v4, :cond_1f

    invoke-virtual {v2}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_2c

    :cond_1f
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_2c
    invoke-static {v0}, Lg/cux;->al(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xe

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9}, Lg/eie;->r(ILjava/lang/Object;)V

    return-void

    :cond_20
    const/4 v9, 0x0

    const/16 v0, 0xf

    invoke-virtual {v3, v0, v9}, Lg/eie;->r(ILjava/lang/Object;)V

    return-void

    :cond_21
    const/4 v9, 0x0

    const/16 v0, 0x10

    invoke-virtual {v3, v0, v9}, Lg/eie;->r(ILjava/lang/Object;)V

    :cond_22
    :goto_2d
    return-void
.end method
