.class public final Lg/fmz;
.super Lg/fox;
.source "SourceFile"


# static fields
.field public static final a:Lg/fmz;


# instance fields
.field public final b:Lg/eek;

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fmz;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/fmz;-><init>(Lg/eek;[I)V

    sput-object v0, Lg/fmz;->a:Lg/fmz;

    return-void
.end method

.method public constructor <init>(Lg/eek;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fmz;->b:Lg/eek;

    iput-object p2, p0, Lg/fmz;->f:[I

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->g:Lg/acq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/fmz;->b:Lg/eek;

    if-nez v0, :cond_0

    const-string v0, "INLINE_NOT_NEEDED"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INLINE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
