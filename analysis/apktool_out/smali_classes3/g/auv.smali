.class public final Lg/auv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/auv;


# instance fields
.field public final b:Lg/dcq;

.field public final c:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/auv;

    invoke-direct {v0}, Lg/auv;-><init>()V

    sput-object v0, Lg/auv;->a:Lg/auv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/auv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lg/dcq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/dcq;-><init>(I)V

    iput-object v0, p0, Lg/auv;->b:Lg/dcq;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lg/ciw;
    .locals 7

    sget-object v0, Lg/dhz;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lg/auv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ciw;

    if-nez v1, :cond_a

    iget-object v1, p0, Lg/auv;->b:Lg/dcq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/ave;->b:Ljava/lang/Class;

    const-class v2, Lg/cys;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lg/ave;->b:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, v1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v1, Lg/fhz;

    invoke-virtual {v1, p1}, Lg/fhz;->c(Ljava/lang/Class;)Lg/eqc;

    move-result-object v1

    iget v3, v1, Lg/eqc;->a:I

    iget-object v4, v1, Lg/eqc;->b:Lg/cir;

    const/4 v5, 0x2

    and-int/2addr v3, v5

    const-string v6, "Protobuf runtime is not correctly loaded."

    if-ne v3, v5, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lg/ave;->a:Lg/czj;

    sget-object v2, Lg/ccs;->a:Lg/gnz;

    new-instance v3, Lg/wo;

    invoke-direct {v3, v1, v2, v4}, Lg/wo;-><init>(Lg/czj;Lg/gnz;Lg/cir;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lg/ave;->c:Lg/czj;

    sget-object v2, Lg/ccs;->b:Lg/gnz;

    if-eqz v2, :cond_3

    new-instance v3, Lg/wo;

    invoke-direct {v3, v1, v2, v4}, Lg/wo;-><init>(Lg/czj;Lg/gnz;Lg/cir;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget v2, v1, Lg/eqc;->a:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    sget v2, Lg/dss;->a:I

    sget-object v2, Lg/dgb;->b:Lg/egt;

    sget-object v3, Lg/ave;->a:Lg/czj;

    sget-object v4, Lg/ccs;->a:Lg/gnz;

    sget-object v5, Lg/dcs;->b:Lg/aoq;

    invoke-static {v1, v2, v3, v4, v5}, Lg/ecy;->w(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget v2, Lg/dss;->a:I

    sget-object v2, Lg/dgb;->b:Lg/egt;

    sget-object v4, Lg/ave;->a:Lg/czj;

    sget-object v5, Lg/dcs;->b:Lg/aoq;

    invoke-static {v1, v2, v4, v3, v5}, Lg/ecy;->w(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;

    move-result-object v3

    goto :goto_1

    :cond_6
    iget v2, v1, Lg/eqc;->a:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    sget v2, Lg/dss;->a:I

    sget-object v2, Lg/dgb;->a:Lg/exj;

    sget-object v3, Lg/ave;->c:Lg/czj;

    sget-object v4, Lg/ccs;->b:Lg/gnz;

    if-eqz v4, :cond_7

    sget-object v5, Lg/dcs;->a:Lg/aoq;

    invoke-static {v1, v2, v3, v4, v5}, Lg/ecy;->w(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;

    move-result-object v3

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    sget v2, Lg/dss;->a:I

    sget-object v2, Lg/dgb;->a:Lg/exj;

    sget-object v4, Lg/ave;->d:Lg/czj;

    sget-object v5, Lg/dcs;->a:Lg/aoq;

    invoke-static {v1, v2, v4, v3, v5}, Lg/ecy;->w(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ciw;

    if-nez p1, :cond_9

    return-object v3

    :cond_9
    return-object p1

    :cond_a
    return-object v1

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "messageType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
