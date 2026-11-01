.class public final Lg/heb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gei;

.field public static final b:Lg/gei;

.field public static final c:Lg/gei;

.field public static final d:Lg/gei;

.field public static final e:Lg/gei;

.field public static final f:Lg/gei;


# instance fields
.field public final g:Lg/gei;

.field public final h:Lg/gei;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/gei;->n:Lg/gei;

    const-string v0, ":"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->b:Lg/gei;

    const-string v0, ":status"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->c:Lg/gei;

    const-string v0, ":method"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->d:Lg/gei;

    const-string v0, ":path"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->f:Lg/gei;

    const-string v0, ":scheme"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->a:Lg/gei;

    const-string v0, ":authority"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/heb;->e:Lg/gei;

    return-void
.end method

.method public constructor <init>(Lg/gei;Lg/gei;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/heb;->g:Lg/gei;

    iput-object p2, p0, Lg/heb;->h:Lg/gei;

    invoke-virtual {p1}, Lg/gei;->d()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lg/gei;->d()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lg/heb;->i:I

    return-void
.end method

.method public constructor <init>(Lg/gei;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/gei;->n:Lg/gei;

    invoke-static {p2}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/gei;->n:Lg/gei;

    invoke-static {p1}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object p1

    invoke-static {p2}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/heb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/heb;

    iget-object v1, p0, Lg/heb;->g:Lg/gei;

    iget-object v3, p1, Lg/heb;->g:Lg/gei;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lg/heb;->h:Lg/gei;

    iget-object p1, p1, Lg/heb;->h:Lg/gei;

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/heb;->g:Lg/gei;

    invoke-virtual {v0}, Lg/gei;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/heb;->h:Lg/gei;

    invoke-virtual {v1}, Lg/gei;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/heb;->g:Lg/gei;

    invoke-virtual {v1}, Lg/gei;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/heb;->h:Lg/gei;

    invoke-virtual {v1}, Lg/gei;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
