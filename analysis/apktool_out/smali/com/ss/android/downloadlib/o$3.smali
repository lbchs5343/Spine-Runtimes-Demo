.class Lcom/ss/android/downloadlib/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/ss/android/downloadlib/o;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/o$3;->ox:Lcom/ss/android/downloadlib/o;

    iput-object p2, p0, Lcom/ss/android/downloadlib/o$3;->dq:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ss/android/downloadlib/o$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/o$3;->ox:Lcom/ss/android/downloadlib/o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/o;->d(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/o$3;->dq:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/o$3;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;Z)V

    return-void
.end method
