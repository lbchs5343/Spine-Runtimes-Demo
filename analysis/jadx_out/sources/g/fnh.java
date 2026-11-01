package g;

import android.media.AudioDeviceInfo;
import android.media.MediaDrmResetException;
import android.util.ArraySet;

/* loaded from: classes.dex */
public abstract /* synthetic */ class fnh {
    public static /* bridge */ /* synthetic */ boolean ab(Throwable th) {
        return th instanceof MediaDrmResetException;
    }

    public static /* bridge */ /* synthetic */ AudioDeviceInfo b(Object obj) {
        return (AudioDeviceInfo) obj;
    }

    public static /* synthetic */ void t() {
    }

    public static /* synthetic */ ArraySet w(int i) {
        return new ArraySet(i);
    }
}
