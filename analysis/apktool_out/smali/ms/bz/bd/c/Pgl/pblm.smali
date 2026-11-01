.class public abstract Lms/bz/bd/c/Pgl/pblm;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bz/bd/c/Pgl/pblm$pgla;
    }
.end annotation


# static fields
.field public static g:Lms/bz/bd/c/Pgl/pblm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const p2, 0x20001

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p0, p5}, Lms/bz/bd/c/Pgl/pblm;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array v5, p3, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "27b714"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x20002

    if-ne p1, p2, :cond_1

    check-cast p6, [Ljava/lang/String;

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    array-length p1, p6

    if-eqz p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    const/4 p2, 0x0

    aget-object p2, p6, p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    const/4 v0, 0x1

    aget-object v0, p6, v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    aget-object p3, p6, p3

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p1, p2, v0}, Lms/bz/bd/c/Pgl/pblm;->d(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    return-object p4

    :array_0
    .array-data 1
        0xct
        0x1et
    .end array-data
.end method

.method public abstract c(JJLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract d(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end method

.method public abstract e(Ljava/lang/String;)Z
.end method

.method public abstract f(JJLjava/lang/String;Ljava/lang/String;I)V
.end method
