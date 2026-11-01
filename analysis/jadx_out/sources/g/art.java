package g;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
public final class art implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f10730b;

    public art(String str, String str2) {
        this.f10729a = str;
        this.f10730b = str2;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str != null && str.startsWith(this.f10729a) && str.endsWith(this.f10730b);
    }
}
