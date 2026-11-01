package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class fam extends cpy implements djx {
    public dug r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public dug w;
    public acr x;

    public fam(dug dugVar, Resources resources) {
        this.i = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.f13307c = -1;
        this.v = -1;
        this.u = -1;
        n(new dug(dugVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0272, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0279, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fam y(Context context, Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int next;
        int next2;
        Context context2 = context;
        Resources resources2 = resources;
        String name = xmlResourceParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        fam famVar = new fam(null, null);
        TypedArray aj = bfc.aj(resources2, theme, attributeSet, bp.f11934a);
        int i = 1;
        famVar.setVisible(aj.getBoolean(1, true), true);
        dug dugVar = famVar.r;
        dugVar.i |= gik.b(aj);
        int i2 = 2;
        dugVar.x = aj.getBoolean(2, dugVar.x);
        int i3 = 3;
        dugVar.k = aj.getBoolean(3, dugVar.k);
        dugVar.f14821f = aj.getInt(4, dugVar.f14821f);
        dugVar.f14815a = aj.getInt(5, dugVar.f14815a);
        boolean z = false;
        famVar.setDither(aj.getBoolean(0, dugVar.r));
        dug dugVar2 = famVar.j;
        if (resources2 != null) {
            dugVar2.y = resources2;
            int i4 = resources2.getDisplayMetrics().densityDpi;
            if (i4 == 0) {
                i4 = 160;
            }
            int i5 = dugVar2.ae;
            dugVar2.ae = i4;
            if (i5 != i4) {
                dugVar2.w = false;
                dugVar2.z = false;
            }
        } else {
            dugVar2.getClass();
        }
        aj.recycle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next3 = xmlResourceParser.next();
            if (next3 == i || ((depth = xmlResourceParser.getDepth()) < depth2 && next3 == i3)) {
                break;
            }
            if (next3 == i2 && depth <= depth2) {
                if (xmlResourceParser.getName().equals("item")) {
                    TypedArray aj2 = bfc.aj(resources2, theme, attributeSet, bp.f11935b);
                    int resourceId = aj2.getResourceId(z ? 1 : 0, z ? 1 : 0);
                    int resourceId2 = aj2.getResourceId(i, -1);
                    Drawable s = resourceId2 > 0 ? ezw.l().s(context2, resourceId2) : null;
                    aj2.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr = new int[attributeCount];
                    int i6 = 0;
                    for (int i7 = 0; i7 < attributeCount; i7++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i7);
                        if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                            int i8 = i6 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i7, z)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr[i6] = attributeNameResource;
                            i6 = i8;
                        }
                    }
                    int[] trimStateSet = StateSet.trimStateSet(iArr, i6);
                    if (s == null) {
                        do {
                            next2 = xmlResourceParser.next();
                        } while (next2 == 4);
                        if (next2 != 2) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (xmlResourceParser.getName().equals("vector")) {
                            s = new eia();
                            s.inflate(resources2, xmlResourceParser, attributeSet, theme);
                        } else {
                            s = gik.a(resources, xmlResourceParser, attributeSet, theme);
                        }
                    }
                    if (s == null) {
                        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    dug dugVar3 = famVar.r;
                    int am = dugVar3.am(s);
                    dugVar3.f14819d[am] = trimStateSet;
                    dugVar3.t.h(am, Integer.valueOf(resourceId));
                } else if (xmlResourceParser.getName().equals("transition")) {
                    TypedArray aj3 = bfc.aj(resources2, theme, attributeSet, bp.f11936c);
                    int resourceId3 = aj3.getResourceId(2, -1);
                    int resourceId4 = aj3.getResourceId(1, -1);
                    int resourceId5 = aj3.getResourceId(z ? 1 : 0, -1);
                    Drawable s2 = resourceId5 > 0 ? ezw.l().s(context2, resourceId5) : null;
                    boolean z2 = aj3.getBoolean(3, z);
                    aj3.recycle();
                    if (s2 == null) {
                        do {
                            next = xmlResourceParser.next();
                        } while (next == 4);
                        if (next != 2) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (xmlResourceParser.getName().equals("animated-vector")) {
                            s2 = new ahf(context2, z ? 1 : 0);
                            s2.inflate(resources2, xmlResourceParser, attributeSet, theme);
                        } else {
                            s2 = gik.a(resources, xmlResourceParser, attributeSet, theme);
                        }
                    }
                    if (s2 == null) {
                        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    if (resourceId3 == -1 || resourceId4 == -1) {
                        break;
                    }
                    dug dugVar4 = famVar.r;
                    int am2 = dugVar4.am(s2);
                    long j = resourceId3;
                    long j2 = resourceId4;
                    long j3 = (j << 32) | j2;
                    long j4 = z2 ? 8589934592L : 0L;
                    long j5 = am2;
                    dugVar4.af.h(j3, Long.valueOf(j5 | j4));
                    if (z2) {
                        dugVar4.af.h((j2 << 32) | j, Long.valueOf(j5 | 4294967296L | j4));
                    }
                    context2 = context;
                    resources2 = resources;
                    i = 1;
                    z = false;
                    i2 = 2;
                    i3 = 3;
                } else {
                    context2 = context;
                    resources2 = resources;
                }
                i = 1;
                i2 = 2;
                i3 = 3;
            }
        }
        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    @Override // g.cpy, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // g.cpy, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        acr acrVar = this.x;
        if (acrVar != null) {
            acrVar.cg();
            this.x = null;
            q(this.v);
            this.v = -1;
            this.u = -1;
        }
    }

    @Override // g.cpy, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.s) {
            z();
            dug dugVar = this.r;
            dugVar.af = dugVar.af.clone();
            dugVar.t = dugVar.t.clone();
            this.s = true;
        }
        return this;
    }

    @Override // g.cpy
    public final void n(dug dugVar) {
        this.j = dugVar;
        int i = this.f13307c;
        if (i >= 0) {
            Drawable ak = dugVar.ak(i);
            this.f13309e = ak;
            if (ak != null) {
                p(ak);
            }
        }
        this.h = null;
        this.w = dugVar;
        this.r = dugVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        if (q(r1) != false) goto L45;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onStateChange(int[] iArr) {
        acr cftVar;
        dug dugVar = this.r;
        int an = dugVar.an(iArr);
        if (an < 0) {
            an = dugVar.an(StateSet.WILD_CARD);
        }
        int i = this.f13307c;
        if (an != i) {
            acr acrVar = this.x;
            if (acrVar != null) {
                if (an != this.v) {
                    if (an == this.u && acrVar.ce()) {
                        acrVar.cf();
                        this.v = this.u;
                        this.u = an;
                    } else {
                        i = this.v;
                        acrVar.cg();
                    }
                }
                r2 = true;
            }
            this.x = null;
            this.u = -1;
            this.v = -1;
            dug dugVar2 = this.r;
            int al = dugVar2.al(i);
            int al2 = dugVar2.al(an);
            if (al2 != 0 && al != 0) {
                long j = al2 | (al << 32);
                int longValue = (int) ((Long) dugVar2.af.m(j)).longValue();
                if (longValue >= 0) {
                    boolean z = (((Long) dugVar2.af.m(j)).longValue() & 8589934592L) != 0;
                    q(longValue);
                    Object obj = this.f13309e;
                    if (obj instanceof AnimationDrawable) {
                        cftVar = new ftg((AnimationDrawable) obj, (((Long) dugVar2.af.m(j)).longValue() & 4294967296L) != 0, z);
                    } else if (obj instanceof ahf) {
                        cftVar = new cft((ahf) obj, 1);
                    } else if (obj instanceof Animatable) {
                        cftVar = new cft((Animatable) obj, 0);
                    }
                    cftVar.cb();
                    this.x = cftVar;
                    this.u = i;
                    this.v = an;
                    r2 = true;
                }
            }
        }
        Drawable drawable = this.f13309e;
        return drawable != null ? drawable.setState(iArr) | r2 : r2;
    }

    @Override // g.cpy, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        acr acrVar = this.x;
        if (acrVar != null && (visible || z2)) {
            if (z) {
                acrVar.cb();
                return visible;
            }
            jumpToCurrentState();
        }
        return visible;
    }

    public final Drawable z() {
        if (!this.t) {
            super.mutate();
            dug dugVar = this.w;
            dugVar.af = dugVar.af.clone();
            dugVar.t = dugVar.t.clone();
            this.t = true;
        }
        return this;
    }
}
