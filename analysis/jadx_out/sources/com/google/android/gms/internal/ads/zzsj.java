package com.google.android.gms.internal.ads;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import g.uz;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzsj {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f8877a;

    /* renamed from: b, reason: collision with root package name */
    public LoudnessCodecController f8878b;

    public zzsj() {
        throw null;
    }

    public zzsj(zzsi zzsiVar) {
        this.f8877a = new HashSet();
    }

    public void zza(MediaCodec mediaCodec) {
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.f8878b;
        if (loudnessCodecController != null) {
            addMediaCodec = loudnessCodecController.addMediaCodec(mediaCodec);
            if (!addMediaCodec) {
                return;
            }
        }
        zzdb.zzf(this.f8877a.add(mediaCodec));
    }

    public void zzb() {
        this.f8877a.clear();
        LoudnessCodecController loudnessCodecController = this.f8878b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public void zzc(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f8877a.remove(mediaCodec) || (loudnessCodecController = this.f8878b) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public void zzd(int i) {
        LoudnessCodecController create;
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.f8878b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f8878b = null;
        }
        create = LoudnessCodecController.create(i, zzgey.zzb(), new uz());
        this.f8878b = create;
        Iterator it = this.f8877a.iterator();
        while (it.hasNext()) {
            addMediaCodec = create.addMediaCodec((MediaCodec) it.next());
            if (!addMediaCodec) {
                it.remove();
            }
        }
    }
}
