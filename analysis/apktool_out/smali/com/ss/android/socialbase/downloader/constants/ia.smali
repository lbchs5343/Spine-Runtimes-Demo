.class public final enum Lcom/ss/android/socialbase/downloader/constants/ia;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/ia;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum dq:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum ia:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum iw:Lcom/ss/android/socialbase/downloader/constants/ia;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum kk:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum mn:Lcom/ss/android/socialbase/downloader/constants/ia;

.field private static final synthetic o:[Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum ox:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum p:Lcom/ss/android/socialbase/downloader/constants/ia;

.field public static final enum s:Lcom/ss/android/socialbase/downloader/constants/ia;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v1, "RUN_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->dq:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v1, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v3, "RUN_STATUS_PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/ia;->d:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v3, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v5, "RUN_STATUS_CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/constants/ia;->ox:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v5, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v7, "RUN_STATUS_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/socialbase/downloader/constants/ia;->p:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v7, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v9, "RUN_STATUS_END_RIGHT_NOW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/socialbase/downloader/constants/ia;->s:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v9, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v11, "RUN_STATUS_RETRY_DELAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/socialbase/downloader/constants/ia;->iw:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v11, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v13, "RUN_STATUS_WAITING_ASYNC_HANDLER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ss/android/socialbase/downloader/constants/ia;->mn:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v13, Lcom/ss/android/socialbase/downloader/constants/ia;

    const-string v15, "RUN_STATUS_END_FOR_FILE_EXIST"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ss/android/socialbase/downloader/constants/ia;->ia:Lcom/ss/android/socialbase/downloader/constants/ia;

    new-instance v15, Lcom/ss/android/socialbase/downloader/constants/ia;

    const/16 v17, 0x7

    const-string v2, "RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/ss/android/socialbase/downloader/constants/ia;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ss/android/socialbase/downloader/constants/ia;->kk:Lcom/ss/android/socialbase/downloader/constants/ia;

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/ss/android/socialbase/downloader/constants/ia;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lcom/ss/android/socialbase/downloader/constants/ia;->o:[Lcom/ss/android/socialbase/downloader/constants/ia;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/ia;
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/ia;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/ia;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/ia;->o:[Lcom/ss/android/socialbase/downloader/constants/ia;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/ia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/ia;

    return-object v0
.end method
