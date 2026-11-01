.class public abstract Lg/aya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/gei;->n:Lg/gei;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object v0

    invoke-virtual {v0}, Lg/gei;->r()[B

    move-result-object v0

    sput-object v0, Lg/aya;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    return-void
.end method
