.class Lcom/ss/android/socialbase/downloader/impls/mn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dfw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/mn;->dq(Ljava/lang/String;Ljava/lang/String;)Lg/fys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/mn;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/mn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/mn$2;->ox:Lcom/ss/android/socialbase/downloader/impls/mn;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/mn$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/mn$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
