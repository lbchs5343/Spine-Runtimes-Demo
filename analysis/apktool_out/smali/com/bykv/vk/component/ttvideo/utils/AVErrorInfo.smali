.class public Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CRASH:Ljava/lang/String; = "crash"

.field public static final ERROR:Ljava/lang/String; = "error"

.field private static PHONE_INFO:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupErrorInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p4, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p4, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    invoke-static {p0, p4}, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_0
    sget-object p0, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 9

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/VersionInfo;->getVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "\r\n"

    if-eqz v0, :cond_0

    aget-object v4, v0, v2

    aget-object v5, v0, v1

    const/4 v6, 0x2

    aget-object v0, v0, v6

    const-string v6, "version:"

    const-string v7, ","

    invoke-static {v6, v4, v7, v5, v7}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getRomMemroy()[J

    move-result-object v0

    const-string v4, ",availe:"

    if-eqz v0, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-wide v5, v0, v2

    aget-wide v7, v0, v1

    const-string v0, "rom memory totle:"

    invoke-static {v5, v6, v0, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getTolalMemory()J

    move-result-wide v7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "ram memory totle:"

    invoke-static {v7, v8, v0, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/utils/HardWareInfo;->getSDCardSize(Landroid/content/Context;)[J

    move-result-object p0

    if-eqz p0, :cond_2

    aget-wide v5, p0, v2

    aget-wide v0, p0, v1

    const-string p0, "sdcard totle:"

    invoke-static {v5, v6, p0, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method
