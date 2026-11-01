.class public final synthetic Lg/bwn;
.super Lg/fgb;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# static fields
.field public static final a:Lg/bwn;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/bwn;

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lg/drx;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Lg/fgb;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/bwn;->a:Lg/bwn;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-object v3, p2

    check-cast v3, Lg/ggb;

    sget-object p1, Lg/drx;->h:Lg/ggb;

    new-instance v0, Lg/ggb;

    iget-object v4, v3, Lg/ggb;->n:Lg/djo;

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg/ggb;-><init>(JLg/ggb;Lg/djo;I)V

    return-object v0
.end method
