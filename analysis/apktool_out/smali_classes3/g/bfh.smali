.class public abstract Lg/bfh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dbi;

.field public static final b:Lg/fbc;

.field public static final c:Lg/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-nez v1, :cond_2

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v4, Lg/bfh;->a:Lg/dbi;

    new-instance v0, Lg/bkc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/bkc;-><init>(I)V

    sput-object v0, Lg/bfh;->b:Lg/fbc;

    new-instance v0, Lg/dde;

    invoke-direct {v0, v3}, Lg/ao;-><init>(I)V

    sput-object v0, Lg/bfh;->c:Lg/ao;

    return-void

    :cond_0
    new-instance v0, Lg/dbi;

    invoke-direct {v0}, Lg/dbi;-><init>()V

    sput-object v0, Lg/bfh;->a:Lg/dbi;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Lg/bkc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bkc;-><init>(I)V

    sput-object v0, Lg/bfh;->b:Lg/fbc;

    new-instance v0, Lg/dde;

    invoke-direct {v0, v3}, Lg/ao;-><init>(I)V

    sput-object v0, Lg/bfh;->c:Lg/ao;

    return-void

    :cond_1
    new-instance v0, Lg/fbc;

    invoke-direct {v0, v2}, Lg/fbc;-><init>(I)V

    sput-object v0, Lg/bfh;->b:Lg/fbc;

    new-instance v0, Lg/ao;

    invoke-direct {v0, v3}, Lg/ao;-><init>(I)V

    sput-object v0, Lg/bfh;->c:Lg/ao;

    return-void

    :cond_2
    sput-object v4, Lg/bfh;->a:Lg/dbi;

    new-instance v0, Lg/fbc;

    invoke-direct {v0, v2}, Lg/fbc;-><init>(I)V

    sput-object v0, Lg/bfh;->b:Lg/fbc;

    new-instance v0, Lg/ao;

    invoke-direct {v0, v3}, Lg/ao;-><init>(I)V

    sput-object v0, Lg/bfh;->c:Lg/ao;

    return-void
.end method
