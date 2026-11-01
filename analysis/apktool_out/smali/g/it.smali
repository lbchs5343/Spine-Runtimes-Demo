.class public final Lg/it;
.super Lg/w;
.source "SourceFile"


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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

    iput-object p1, p0, Lg/it;->this$0:Lg/djo;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lg/it;->result:Ljava/lang/Object;

    iget p1, p0, Lg/it;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/it;->label:I

    iget-object v0, p0, Lg/it;->this$0:Lg/djo;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lg/djo;->an(Lg/ggb;IJLg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lg/clw;

    invoke-direct {v0, p1}, Lg/clw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
