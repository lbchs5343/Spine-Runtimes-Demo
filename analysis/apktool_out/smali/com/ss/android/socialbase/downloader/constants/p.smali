.class public final enum Lcom/ss/android/socialbase/downloader/constants/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/ss/android/socialbase/downloader/constants/p;

.field public static final enum dq:Lcom/ss/android/socialbase/downloader/constants/p;

.field public static final enum ox:Lcom/ss/android/socialbase/downloader/constants/p;

.field private static final synthetic p:[Lcom/ss/android/socialbase/downloader/constants/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/p;

    const-string v1, "SYNC_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/p;->dq:Lcom/ss/android/socialbase/downloader/constants/p;

    new-instance v1, Lcom/ss/android/socialbase/downloader/constants/p;

    const-string v3, "SYNC_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/constants/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/p;->d:Lcom/ss/android/socialbase/downloader/constants/p;

    new-instance v3, Lcom/ss/android/socialbase/downloader/constants/p;

    const-string v5, "SYNC_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/constants/p;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/constants/p;->ox:Lcom/ss/android/socialbase/downloader/constants/p;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ss/android/socialbase/downloader/constants/p;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ss/android/socialbase/downloader/constants/p;->p:[Lcom/ss/android/socialbase/downloader/constants/p;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/p;
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/constants/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/p;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/p;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/p;->p:[Lcom/ss/android/socialbase/downloader/constants/p;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/p;

    return-object v0
.end method
