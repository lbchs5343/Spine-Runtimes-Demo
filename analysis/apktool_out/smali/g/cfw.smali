.class public final Lg/cfw;
.super Lg/w;
.source "SourceFile"


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lg/fqc;


# direct methods
.method public constructor <init>(Lg/fqc;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/cfw;->this$0:Lg/fqc;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/cfw;->result:Ljava/lang/Object;

    iget p1, p0, Lg/cfw;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/cfw;->label:I

    iget-object p1, p0, Lg/cfw;->this$0:Lg/fqc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lg/fqc;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
