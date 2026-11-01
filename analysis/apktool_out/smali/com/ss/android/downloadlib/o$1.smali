.class final Lcom/ss/android/downloadlib/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;)Lcom/ss/android/downloadlib/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/o$1;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/ss/android/downloadlib/o;

    iget-object v1, p0, Lcom/ss/android/downloadlib/o$1;->dq:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/downloadlib/o;-><init>(Landroid/content/Context;Lcom/ss/android/downloadlib/o$1;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/o;->dq(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/o;

    return-void
.end method
