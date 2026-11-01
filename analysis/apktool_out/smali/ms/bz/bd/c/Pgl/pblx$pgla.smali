.class final Lms/bz/bd/c/Pgl/pblx$pgla;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pblx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pgla"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lms/bz/bd/c/Pgl/pblx$pgla;

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lms/bz/bd/c/Pgl/pblx$pgla;

    iget-object v0, p1, Lms/bz/bd/c/Pgl/pblx$pgla;->b:Ljava/lang/Long;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pblx$pgla;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->b:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lms/bz/bd/c/Pgl/pblx$pgla;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
