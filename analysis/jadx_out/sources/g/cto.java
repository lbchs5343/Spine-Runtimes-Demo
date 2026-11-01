package g;

import android.media.AudioTrack;

/* loaded from: classes3.dex */
public abstract class cto {
    public static void a(AudioTrack audioTrack, fqp fqpVar) {
        audioTrack.setPreferredDevice(fqpVar == null ? null : fqpVar.f17252a);
    }
}
