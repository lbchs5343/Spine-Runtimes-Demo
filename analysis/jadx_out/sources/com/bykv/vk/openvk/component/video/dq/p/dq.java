package com.bykv.vk.openvk.component.video.dq.p;

import com.bykv.vk.openvk.component.video.dq.p.ox;

/* loaded from: classes.dex */
public abstract class dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private ox.s f564d;
    protected boolean dq = false;
    private ox.p ia;
    private ox.mn iw;
    private ox.InterfaceC0010ox mn;
    private ox.d ox;
    private ox.dq p;
    private ox.iw s;

    public final void d() {
        try {
            ox.s sVar = this.f564d;
            if (sVar != null) {
                sVar.d(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    public final boolean d(int i, int i2) {
        try {
            ox.p pVar = this.ia;
            if (pVar != null) {
                if (pVar.d(this, i, i2)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    public void dq() {
        this.f564d = null;
        this.p = null;
        this.ox = null;
        this.s = null;
        this.iw = null;
        this.mn = null;
        this.ia = null;
    }

    public final void dq(int i) {
        try {
            ox.dq dqVar = this.p;
            if (dqVar != null) {
                dqVar.dq(this, i);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    public final void dq(int i, int i2, int i3, int i4) {
        try {
            ox.mn mnVar = this.iw;
            if (mnVar != null) {
                mnVar.dq(this, i, i2, i3, i4);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.d dVar) {
        this.ox = dVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.dq dqVar) {
        this.p = dqVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.iw iwVar) {
        this.s = iwVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.mn mnVar) {
        this.iw = mnVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.InterfaceC0010ox interfaceC0010ox) {
        this.mn = interfaceC0010ox;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.p pVar) {
        this.ia = pVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public final void dq(ox.s sVar) {
        this.f564d = sVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void dq(boolean z) {
        this.dq = z;
    }

    public final boolean dq(int i, int i2) {
        try {
            ox.InterfaceC0010ox interfaceC0010ox = this.mn;
            if (interfaceC0010ox != null) {
                if (interfaceC0010ox.dq(this, i, i2)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    public final void ox() {
        try {
            ox.d dVar = this.ox;
            if (dVar != null) {
                dVar.dq(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    public final void p() {
        try {
            ox.iw iwVar = this.s;
            if (iwVar != null) {
                iwVar.ox(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }
}
