.class public Lcom/bytedance/sdk/openadsdk/TTLocation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/LocationProvider;


# instance fields
.field private d:D

.field private dq:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->dq:D

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->d:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->dq:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->d:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->dq:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->d:D

    return-void
.end method
