.class public Lcom/ss/android/socialbase/downloader/constants/s;
.super Ljava/lang/Object;


# static fields
.field public static volatile d:Ljava/lang/String; = ""

.field public static volatile dq:Ljava/lang/String; = ""

.field public static ia:J = 0xa00000L

.field public static iw:J = 0x500000L

.field public static final kk:Lorg/json/JSONObject;

.field public static mn:J = 0x1e00000L

.field public static volatile ox:Ljava/lang/String; = ""

.field public static p:J = 0x7d000L

.field public static s:J = 0x32L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/s;->kk:Lorg/json/JSONObject;

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/ss/android/socialbase/downloader/constants/s;->dq:Ljava/lang/String;

    return-void
.end method
