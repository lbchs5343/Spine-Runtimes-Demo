.class public final Landroidx/work/impl/workers/a;
.super Lg/w;
.source "SourceFile"


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/workers/a;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/work/impl/workers/a;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/work/impl/workers/a;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/work/impl/workers/a;->label:I

    iget-object p1, p0, Landroidx/work/impl/workers/a;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
