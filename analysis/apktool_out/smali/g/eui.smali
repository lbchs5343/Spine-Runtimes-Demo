.class public final Lg/eui;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/euu;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/euu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eui;->a:Lg/euu;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/eui;->b:Ljava/util/ArrayList;

    return-void
.end method
