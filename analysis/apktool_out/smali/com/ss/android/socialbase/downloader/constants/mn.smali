.class public final enum Lcom/ss/android/socialbase/downloader/constants/mn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/mn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/ss/android/socialbase/downloader/constants/mn;

.field public static final enum dq:Lcom/ss/android/socialbase/downloader/constants/mn;

.field public static final enum ox:Lcom/ss/android/socialbase/downloader/constants/mn;

.field public static final enum p:Lcom/ss/android/socialbase/downloader/constants/mn;

.field private static final synthetic s:[Lcom/ss/android/socialbase/downloader/constants/mn;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/mn;

    const-string v1, "DELAY_RETRY_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/mn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/mn;->dq:Lcom/ss/android/socialbase/downloader/constants/mn;

    new-instance v1, Lcom/ss/android/socialbase/downloader/constants/mn;

    const-string v3, "DELAY_RETRY_WAITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/constants/mn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/mn;->d:Lcom/ss/android/socialbase/downloader/constants/mn;

    new-instance v3, Lcom/ss/android/socialbase/downloader/constants/mn;

    const-string v5, "DELAY_RETRY_DOWNLOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/constants/mn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/constants/mn;->ox:Lcom/ss/android/socialbase/downloader/constants/mn;

    new-instance v5, Lcom/ss/android/socialbase/downloader/constants/mn;

    const-string v7, "DELAY_RETRY_DOWNLOADED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ss/android/socialbase/downloader/constants/mn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/socialbase/downloader/constants/mn;->p:Lcom/ss/android/socialbase/downloader/constants/mn;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ss/android/socialbase/downloader/constants/mn;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ss/android/socialbase/downloader/constants/mn;->s:[Lcom/ss/android/socialbase/downloader/constants/mn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/mn;
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/constants/mn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/mn;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/mn;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/mn;->s:[Lcom/ss/android/socialbase/downloader/constants/mn;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/mn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/mn;

    return-object v0
.end method
