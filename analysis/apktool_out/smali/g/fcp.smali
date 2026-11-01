.class public final Lg/fcp;
.super Lg/w;
.source "SourceFile"


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lg/djo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/djo;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/djo;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/fcp;->this$0:Lg/djo;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/fcp;->result:Ljava/lang/Object;

    iget p1, p0, Lg/fcp;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/fcp;->label:I

    iget-object p1, p0, Lg/fcp;->this$0:Lg/djo;

    invoke-static {p1, p0}, Lg/djo;->u(Lg/djo;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lg/clw;

    invoke-direct {v0, p1}, Lg/clw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
