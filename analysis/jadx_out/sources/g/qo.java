package g;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class qo {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f19866a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19867b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f19868c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19869d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19870e;

    /* renamed from: f, reason: collision with root package name */
    public final String f19871f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19872g;
    public long h = 0;
    public final Set i;
    public final ArrayList j;
    public final boolean k;
    public final Set l;
    public final Set m;

    public qo(gxk gxkVar) {
        this.f19871f = gxkVar.m;
        this.j = gxkVar.f18944a;
        this.l = Collections.unmodifiableSet(gxkVar.f18949f);
        this.f19868c = gxkVar.j;
        Collections.unmodifiableMap(gxkVar.l);
        this.f19870e = gxkVar.i;
        this.f19872g = gxkVar.k;
        this.m = Collections.unmodifiableSet(gxkVar.f18946c);
        this.f19866a = gxkVar.f18948e;
        this.i = Collections.unmodifiableSet(gxkVar.f18950g);
        this.k = gxkVar.f18945b;
        this.f19867b = gxkVar.f18947d;
        this.f19869d = gxkVar.h;
    }
}
