.class public final Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;,
        Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;,
        Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;,
        Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$Value;
    }
.end annotation


# static fields
.field private static APP_PATH:Ljava/lang/String; = null

.field private static CRASH_FILE_NAME:Ljava/lang/String; = "ttplayer_crash.log"

.field private static CRASH_FILE_PATH:Ljava/lang/String; = null

.field public static final DEBUG:Z = false

.field public static final DEFAULT_POOL_STACK_SIZE:I = 0x20

.field public static final FALSE:I = 0x0

.field public static IS_PRINT_INFO:Z = false

.field public static final IS_TIME_OUT_COUNT:I = 0x3

.field private static final KEYS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_IS_BATTERY_INFO:I = 0x17

.field public static final KEY_IS_CHECK_LIB:I = 0x3

.field public static final KEY_IS_CHECK_TTPLAYER_MODEL:I = 0x0

.field public static final KEY_IS_CRASHED:I = 0x7

.field public static final KEY_IS_CRASH_FILE_NAME:I = 0x11

.field public static final KEY_IS_CRASH_PATH:I = 0x13

.field public static final KEY_IS_DEBUG_MODEL:I = 0x6

.field public static final KEY_IS_FORBID_CREATED_OS_PLAYER:I = 0xb

.field public static final KEY_IS_FOREGROUND:I = 0x15

.field public static final KEY_IS_IPTTPLAYER_ON:I = 0x2

.field public static final KEY_IS_LOG_FILE_DIR:I = 0x14

.field public static final KEY_IS_ON_SCREEN:I = 0x16

.field public static final KEY_IS_OPEN_DEVICE_FAIL:I = 0x8

.field public static final KEY_IS_PORT_VERSION:I = 0x12

.field public static final KEY_IS_PRINT_INFO:I = 0x5

.field public static final KEY_IS_SDK_VERSION:I = 0xd

.field public static final KEY_IS_SDK_VERSION_INFO:I = 0xf

.field public static final KEY_IS_SDK_VERSION_NAME:I = 0xe

.field public static final KEY_IS_START_SERVICE:I = 0x10

.field public static final KEY_IS_STOP_SERVICE:I = 0xc

.field public static final KEY_IS_THREAD_POOL_STACK_SIZE:I = 0x19

.field public static final KEY_IS_THROW_CRASH:I = 0x4

.field public static final KEY_IS_TIMEOUT_COUNT:I = 0xa

.field public static final KEY_IS_TTPLAYER_ON:I = 0x1

.field public static final KEY_IS_USED_THREAD_POOL:I = 0x18

.field private static LIBRARY_DIR:Ljava/lang/String; = null

.field private static PLAYER_LIBRARY_NAME:Ljava/lang/String; = "libttmplayer_lite.so"

.field private static final PORT_VERSION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ttplayer"

.field public static final TRUE:I = 0x1

.field private static TTPLAYER_FILE_CACHE_DIR:Ljava/lang/String; = null

.field private static final VERSION:I = 0x1

.field private static final VERSION_INFO:Ljava/lang/String; = "version code:1,name:999.999.999.9default sdk info 2016-12-05"

.field private static final VERSION_NAME:Ljava/lang/String; = "999.999.999.9"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(II)V

    const/16 v0, 0xe

    const-string v2, "999.999.999.9"

    invoke-static {v0, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    const/16 v0, 0xf

    const-string v2, "version code:1,name:999.999.999.9default sdk info 2016-12-05"

    invoke-static {v0, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    invoke-static {v1, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(II)V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    const/16 v0, 0x12

    invoke-static {v0, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(II)V

    const/16 v0, 0x19

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDebugTTPlayerLib()V
    .locals 0

    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p0, 0x400

    :try_start_2
    new-array p0, p0, [B

    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    invoke-virtual {v2, p0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 p0, 0x1

    return p0

    :goto_3
    move-object p0, v2

    goto :goto_b

    :goto_4
    move-object p0, v2

    goto :goto_10

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_5
    move-object p0, p1

    goto :goto_6

    :catch_3
    nop

    goto :goto_b

    :catch_4
    nop

    goto :goto_10

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object v2, p2

    goto :goto_5

    :catch_5
    nop

    goto :goto_a

    :catch_6
    nop

    goto :goto_f

    :goto_6
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catch_7
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_9

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_9
    throw p0

    :goto_a
    move-object p2, p0

    :goto_b
    if-eqz p0, :cond_8

    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_c

    :catch_8
    move-exception p0

    goto :goto_d

    :cond_8
    :goto_c
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_e

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_e
    return v1

    :goto_f
    move-object p2, p0

    :goto_10
    if-eqz p0, :cond_a

    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_11

    :catch_9
    move-exception p0

    goto :goto_12

    :cond_a
    :goto_11
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_13

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_13
    return v1
.end method

.method public static final getAppCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppCrashFileStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "plugins"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "com.bykv.vk.component.ttvideo"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static final getAppCrashFilePath2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static final getAppCrashFileStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static final getAppFileCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->TTPLAYER_FILE_CACHE_DIR:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static final getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static final getExternalStorageDirectoryCrashFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPlayerLibraryPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getPlayerLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayerLibraryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez p0, :cond_2

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerLibrarysDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPlugerCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "plugins"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "com.bykv.vk.component.ttvideo"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getValue(II)I
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->getValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final getValue(IJ)J
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;->getValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public static final getValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$Value;

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final getValue(IZ)Z
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->getValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method public static final getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isOnTTPlayer()Z
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    invoke-static {v2, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x7

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    if-eq v0, v2, :cond_5

    const/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public static isPrintInfo()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->IS_PRINT_INFO:Z

    return v0
.end method

.method public static final moveFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final setCrashFileName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static final setCrashFilePath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public static final setLibraryName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    return-void
.end method

.method public static final setLibrarysDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    return-void
.end method

.method public static final setValue(II)V
    .locals 3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    check-cast v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->setValue(I)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static final setValue(IJ)V
    .locals 3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;->setValue(J)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;

    invoke-direct {v1, p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$LongValue;-><init>(IJ)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static final setValue(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$StringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static final setValue(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(II)V

    return-void
.end method
