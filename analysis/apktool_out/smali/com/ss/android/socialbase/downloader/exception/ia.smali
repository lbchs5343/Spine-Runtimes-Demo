.class public final enum Lcom/ss/android/socialbase/downloader/exception/ia;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/exception/ia;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/ss/android/socialbase/downloader/exception/ia;

.field public static final enum dq:Lcom/ss/android/socialbase/downloader/exception/ia;

.field private static final synthetic ox:[Lcom/ss/android/socialbase/downloader/exception/ia;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/ia;

    const-string v1, "RETURN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/ia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/ia;

    const-string v3, "CONTINUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/ia;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/exception/ia;->d:Lcom/ss/android/socialbase/downloader/exception/ia;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ss/android/socialbase/downloader/exception/ia;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ss/android/socialbase/downloader/exception/ia;->ox:[Lcom/ss/android/socialbase/downloader/exception/ia;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/exception/ia;
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/exception/ia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/exception/ia;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/exception/ia;->ox:[Lcom/ss/android/socialbase/downloader/exception/ia;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/exception/ia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/exception/ia;

    return-object v0
.end method
