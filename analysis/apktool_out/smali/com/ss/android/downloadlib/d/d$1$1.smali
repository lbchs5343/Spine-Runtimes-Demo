.class Lcom/ss/android/downloadlib/d/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/d/d$1;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d/d$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/d$1$1;->dq:Lcom/ss/android/downloadlib/d/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1$1;->dq:Lcom/ss/android/downloadlib/d/d$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/d/d$1;->d:Lcom/ss/android/downloadlib/d/mn;

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/d/mn;->dq(Z)V

    return-void
.end method
