.class public abstract Lg/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gez;

.field public static final b:Lg/gez;

.field public static final c:Lg/gez;

.field public static final d:Lg/gez;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/gez;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/gez;-><init>(Lg/dwm;Z)V

    sput-object v0, Lg/cl;->b:Lg/gez;

    new-instance v0, Lg/gez;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lg/gez;-><init>(Lg/dwm;Z)V

    sput-object v0, Lg/cl;->c:Lg/gez;

    new-instance v0, Lg/gez;

    sget-object v1, Lg/dwm;->p:Lg/dwm;

    invoke-direct {v0, v1, v2}, Lg/gez;-><init>(Lg/dwm;Z)V

    sput-object v0, Lg/cl;->d:Lg/gez;

    new-instance v0, Lg/gez;

    invoke-direct {v0, v1, v3}, Lg/gez;-><init>(Lg/dwm;Z)V

    sput-object v0, Lg/cl;->a:Lg/gez;

    return-void
.end method
