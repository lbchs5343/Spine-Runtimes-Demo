package g;

import android.media.AudioTrack;

/* loaded from: classes3.dex */
public final class fbb extends AudioTrack.StreamEventCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ alq f16500a;

    public fbb(alq alqVar) {
        this.f16500a = alqVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        audioTrack.equals(this.f16500a.f10453c.ah);
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onPresentationEnded(AudioTrack audioTrack) {
        if (audioTrack.equals(this.f16500a.f10453c.ah)) {
            this.f16500a.f10453c.y = true;
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        audioTrack.equals(this.f16500a.f10453c.ah);
    }
}
