.class public final Lg/fki;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:C

.field public final e:D


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fki;->c:Ljava/util/ArrayList;

    iput-char p2, p0, Lg/fki;->d:C

    iput-wide p3, p0, Lg/fki;->e:D

    iput-object p5, p0, Lg/fki;->a:Ljava/lang/String;

    iput-object p6, p0, Lg/fki;->b:Ljava/lang/String;

    return-void
.end method

.method public static f(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p0, v0, p1}, Lg/tn;->k(IILjava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lg/fki;->b:Ljava/lang/String;

    iget-object v1, p0, Lg/fki;->a:Ljava/lang/String;

    iget-char v2, p0, Lg/fki;->d:C

    invoke-static {v2, v0, v1}, Lg/fki;->f(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
