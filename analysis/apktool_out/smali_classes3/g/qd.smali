.class public final Lg/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# static fields
.field public static final a:Lg/eiw;


# instance fields
.field public final b:Lg/ja;

.field public final c:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/eiw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/eiw;-><init>(I)V

    sput-object v0, Lg/qd;->a:Lg/eiw;

    new-instance v0, Lg/eiw;

    invoke-direct {v0, v1}, Lg/eiw;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lg/ja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/qd;->b:Lg/ja;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg/qd;->c:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final d(Lg/ja;Lg/eem;Lg/ri;Lg/esz;Z)Lg/bke;
    .locals 2

    invoke-interface {p4}, Lg/esz;->value()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lg/ri;

    invoke-direct {v1, v0}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, Lg/ja;->j(Lg/ri;)Lg/gtx;

    move-result-object p1

    invoke-interface {p1}, Lg/gtx;->ao()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4}, Lg/esz;->nullSafe()Z

    move-result p4

    instance-of v0, p1, Lg/bke;

    if-eqz v0, :cond_0

    check-cast p1, Lg/bke;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/dsb;

    if-eqz v0, :cond_3

    check-cast p1, Lg/dsb;

    if-eqz p5, :cond_1

    iget-object p5, p3, Lg/ri;->a:Ljava/lang/Class;

    iget-object v0, p0, Lg/qd;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p5, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lg/dsb;

    if-eqz p5, :cond_1

    move-object p1, p5

    :cond_1
    invoke-interface {p1, p2, p3}, Lg/dsb;->j(Lg/eem;Lg/ri;)Lg/bke;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    new-instance p2, Lg/agf;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3}, Lg/agf;-><init>(Lg/bke;I)V

    return-object p2

    :cond_2
    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Invalid attempt to bind an instance of "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lg/ri;->b:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lg/acr;->al(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 7

    iget-object v0, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v1, Lg/esz;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/esz;

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lg/qd;->b:Lg/ja;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lg/qd;->d(Lg/ja;Lg/eem;Lg/ri;Lg/esz;Z)Lg/bke;

    move-result-object p1

    return-object p1
.end method
