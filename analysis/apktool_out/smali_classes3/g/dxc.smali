.class public abstract Lg/dxc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/StringBuilder;

.field public static final b:Lg/gei;

.field public static final c:Lg/gei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    sget-object v0, Lg/gei;->n:Lg/gei;

    const-string v0, "RIFF"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/dxc;->b:Lg/gei;

    const-string v0, "WEBP"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    sput-object v0, Lg/dxc;->c:Lg/gei;

    return-void
.end method
