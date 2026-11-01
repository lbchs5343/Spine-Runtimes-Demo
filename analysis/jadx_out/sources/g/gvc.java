package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class gvc implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gvc[] f18798a;
    public static final gvc zza;

    static {
        gvc gvcVar = new gvc("INSTANCE", 0);
        zza = gvcVar;
        f18798a = new gvc[]{gvcVar};
    }

    public static gvc[] values() {
        return (gvc[]) f18798a.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzfwq.zzl(false, "no calls to next() since the last call to remove()");
    }
}
