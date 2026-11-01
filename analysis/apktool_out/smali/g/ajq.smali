.class public final Lg/ajq;
.super Lg/w;
.source "SourceFile"


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lg/dqm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dqm;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/dqm;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/ajq;->this$0:Lg/dqm;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/ajq;->result:Ljava/lang/Object;

    iget p1, p0, Lg/ajq;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/ajq;->label:I

    iget-object p1, p0, Lg/ajq;->this$0:Lg/dqm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lg/dqm;->e(Lg/ayw;Lg/bdp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
