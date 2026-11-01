.class public final Lg/cwa;
.super Lg/w;
.source "SourceFile"


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lg/aos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/aos;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/aos;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/cwa;->this$0:Lg/aos;

    invoke-direct {p0, p2}, Lg/w;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/cwa;->result:Ljava/lang/Object;

    iget p1, p0, Lg/cwa;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/cwa;->label:I

    iget-object p1, p0, Lg/cwa;->this$0:Lg/aos;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lg/aos;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
