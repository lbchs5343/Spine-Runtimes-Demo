.class public final Lg/gnw;
.super Lg/w;
.source "SourceFile"


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lg/dly;


# direct methods
.method public constructor <init>(Lg/dly;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/gnw;->this$0:Lg/dly;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/gnw;->result:Ljava/lang/Object;

    iget p1, p0, Lg/gnw;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/gnw;->label:I

    iget-object p1, p0, Lg/gnw;->this$0:Lg/dly;

    invoke-static {p1, p0}, Lg/dly;->o(Lg/dly;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
