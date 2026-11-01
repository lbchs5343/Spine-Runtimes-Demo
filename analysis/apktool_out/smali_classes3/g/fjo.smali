.class public final Lg/fjo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fjo;


# instance fields
.field public final b:Lg/aws;

.field public final c:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fjo;

    invoke-direct {v0}, Lg/fjo;-><init>()V

    sput-object v0, Lg/fjo;->a:Lg/fjo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/fjo;->c:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lg/aws;

    invoke-direct {v0}, Lg/aws;-><init>()V

    iput-object v0, p0, Lg/fjo;->b:Lg/aws;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lg/dxm;
    .locals 5

    sget-object v0, Lg/cua;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lg/fjo;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dxm;

    if-nez v1, :cond_3

    iget-object v1, p0, Lg/fjo;->b:Lg/aws;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/gog;->a:Lg/cuf;

    const-class v2, Lg/fsu;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    iget-object v1, v1, Lg/aws;->b:Lg/ccp;

    invoke-virtual {v1, p1}, Lg/ccp;->a(Ljava/lang/Class;)Lg/hcu;

    move-result-object v1

    iget v2, v1, Lg/hcu;->a:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lg/gog;->a:Lg/cuf;

    sget-object v3, Lg/dgp;->a:Lg/gpu;

    iget-object v1, v1, Lg/hcu;->b:Lg/bsv;

    new-instance v3, Lg/gtm;

    invoke-direct {v3, v2, v1}, Lg/gtm;-><init>(Lg/cuf;Lg/bsv;)V

    goto :goto_1

    :cond_0
    sget v2, Lg/cay;->a:I

    sget v2, Lg/fah;->a:I

    sget-object v2, Lg/gog;->a:Lg/cuf;

    invoke-virtual {v1}, Lg/hcu;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    sget-object v3, Lg/dgp;->a:Lg/gpu;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget v4, Lg/ckc;->a:I

    invoke-static {v1, v2, v3}, Lg/dei;->q(Lg/hcu;Lg/cuf;Lg/gpu;)Lg/dei;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dxm;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v3

    :cond_3
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "messageType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
