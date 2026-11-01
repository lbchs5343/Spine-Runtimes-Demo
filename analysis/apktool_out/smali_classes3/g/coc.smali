.class public interface abstract Lg/coc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ab:Lg/bli;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bli;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/coc;->ab:Lg/bli;

    return-void
.end method


# virtual methods
.method public abstract getAmount()I
.end method

.method public abstract getType()Ljava/lang/String;
.end method
