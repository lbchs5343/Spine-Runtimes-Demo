.class public Lg/aog;
.super Lg/bcx;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lg/cwx;->az:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lg/aog;

    iget-object p1, p1, Lg/aog;->d:Ljava/lang/String;

    iget-object v0, p0, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Lg/bjt;
    .locals 1

    sget-object v0, Lg/bjt;->OBJECT:Lg/bjt;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aog;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aog;->d:Ljava/lang/String;

    return-object v0
.end method
