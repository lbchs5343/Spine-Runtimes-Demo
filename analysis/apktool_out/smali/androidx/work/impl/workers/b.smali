.class public final Landroidx/work/impl/workers/b;
.super Lg/w;
.source "SourceFile"


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/workers/b;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/work/impl/workers/b;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/work/impl/workers/b;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/work/impl/workers/b;->label:I

    iget-object p1, p0, Landroidx/work/impl/workers/b;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-static {p1, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
