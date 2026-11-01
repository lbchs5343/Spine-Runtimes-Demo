package g;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class cck extends MenuInflater {

    /* renamed from: a, reason: collision with root package name */
    public static final Class[] f12636a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f12637b;

    /* renamed from: c, reason: collision with root package name */
    public Object f12638c;

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f12639d;

    /* renamed from: e, reason: collision with root package name */
    public final Object[] f12640e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f12641f;

    static {
        Class[] clsArr = {Context.class};
        f12636a = clsArr;
        f12637b = clsArr;
    }

    public cck(Context context) {
        super(context);
        this.f12641f = context;
        Object[] objArr = {context};
        this.f12639d = objArr;
        this.f12640e = objArr;
    }

    public static Object g(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? g(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void h(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int i;
        XmlPullParser xmlPullParser2;
        ColorStateList colorStateList;
        int resourceId;
        bpb bpbVar = new bpb(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        xmlPullParser2 = xmlPullParser;
                        z2 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        bpbVar.v = 0;
                        bpbVar.aa = 0;
                        bpbVar.f11945g = 0;
                        bpbVar.j = 0;
                        bpbVar.q = true;
                        bpbVar.ad = true;
                    } else if (name2.equals("item")) {
                        if (!bpbVar.f11940b) {
                            azw azwVar = bpbVar.f11938a;
                            if (azwVar == null || !azwVar.f11135b.hasSubMenu()) {
                                bpbVar.f11940b = true;
                                bpbVar.ag(bpbVar.k.add(bpbVar.v, bpbVar.u, bpbVar.w, bpbVar.f11941c));
                            } else {
                                bpbVar.f11940b = true;
                                bpbVar.ag(bpbVar.k.addSubMenu(bpbVar.v, bpbVar.u, bpbVar.w, bpbVar.f11941c).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        xmlPullParser2 = xmlPullParser;
                        z = true;
                    }
                    eventType = xmlPullParser2.next();
                    i = 2;
                }
                xmlPullParser2 = xmlPullParser;
                eventType = xmlPullParser2.next();
                i = 2;
            } else {
                if (!z2) {
                    String name3 = xmlPullParser.getName();
                    if (name3.equals("group")) {
                        TypedArray obtainStyledAttributes = this.f12641f.obtainStyledAttributes(attributeSet, acs.p);
                        bpbVar.v = obtainStyledAttributes.getResourceId(1, 0);
                        bpbVar.aa = obtainStyledAttributes.getInt(3, 0);
                        bpbVar.f11945g = obtainStyledAttributes.getInt(4, 0);
                        bpbVar.j = obtainStyledAttributes.getInt(5, 0);
                        bpbVar.q = obtainStyledAttributes.getBoolean(i, true);
                        bpbVar.ad = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            int[] iArr = acs.u;
                            Context context = this.f12641f;
                            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr);
                            bpbVar.u = obtainStyledAttributes2.getResourceId(i, 0);
                            bpbVar.w = (obtainStyledAttributes2.getInt(6, bpbVar.f11945g) & 65535) | (obtainStyledAttributes2.getInt(5, bpbVar.aa) & (-65536));
                            bpbVar.f11941c = obtainStyledAttributes2.getText(7);
                            bpbVar.i = obtainStyledAttributes2.getText(8);
                            bpbVar.t = obtainStyledAttributes2.getResourceId(0, 0);
                            String string = obtainStyledAttributes2.getString(9);
                            bpbVar.f11944f = string == null ? (char) 0 : string.charAt(0);
                            bpbVar.f11942d = obtainStyledAttributes2.getInt(16, 4096);
                            String string2 = obtainStyledAttributes2.getString(10);
                            bpbVar.s = string2 == null ? (char) 0 : string2.charAt(0);
                            bpbVar.x = obtainStyledAttributes2.getInt(20, 4096);
                            if (obtainStyledAttributes2.hasValue(11)) {
                                bpbVar.ae = obtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                bpbVar.ae = bpbVar.j;
                            }
                            bpbVar.r = obtainStyledAttributes2.getBoolean(3, false);
                            bpbVar.z = obtainStyledAttributes2.getBoolean(4, bpbVar.q);
                            bpbVar.l = obtainStyledAttributes2.getBoolean(1, bpbVar.ad);
                            bpbVar.o = obtainStyledAttributes2.getInt(21, -1);
                            bpbVar.f11943e = obtainStyledAttributes2.getString(12);
                            bpbVar.p = obtainStyledAttributes2.getResourceId(13, 0);
                            bpbVar.ac = obtainStyledAttributes2.getString(15);
                            String string3 = obtainStyledAttributes2.getString(14);
                            if (string3 != null && bpbVar.p == 0 && bpbVar.ac == null) {
                                bpbVar.f11938a = (azw) bpbVar.af(string3, f12637b, this.f12640e);
                            } else {
                                bpbVar.f11938a = null;
                            }
                            bpbVar.y = obtainStyledAttributes2.getText(17);
                            bpbVar.h = obtainStyledAttributes2.getText(22);
                            if (obtainStyledAttributes2.hasValue(19)) {
                                bpbVar.m = edd.f(obtainStyledAttributes2.getInt(19, -1), bpbVar.m);
                            } else {
                                bpbVar.m = null;
                            }
                            if (obtainStyledAttributes2.hasValue(18)) {
                                if (!obtainStyledAttributes2.hasValue(18) || (resourceId = obtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = eyt.bh(context, resourceId)) == null) {
                                    colorStateList = obtainStyledAttributes2.getColorStateList(18);
                                }
                                bpbVar.n = colorStateList;
                            } else {
                                bpbVar.n = null;
                            }
                            obtainStyledAttributes2.recycle();
                            bpbVar.f11940b = false;
                            xmlPullParser2 = xmlPullParser;
                        } else if (name3.equals("menu")) {
                            bpbVar.f11940b = true;
                            SubMenu addSubMenu = bpbVar.k.addSubMenu(bpbVar.v, bpbVar.u, bpbVar.w, bpbVar.f11941c);
                            bpbVar.ag(addSubMenu.getItem());
                            xmlPullParser2 = xmlPullParser;
                            h(xmlPullParser2, attributeSet, addSubMenu);
                        } else {
                            xmlPullParser2 = xmlPullParser;
                            str = name3;
                            z2 = true;
                        }
                        eventType = xmlPullParser2.next();
                        i = 2;
                    }
                }
                xmlPullParser2 = xmlPullParser;
                eventType = xmlPullParser2.next();
                i = 2;
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof ftn)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.f12641f.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof ftn) {
                    ftn ftnVar = (ftn) menu;
                    if (!ftnVar.o) {
                        ftnVar.aj();
                        z = true;
                    }
                }
                h(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((ftn) menu).ai();
                }
                xmlResourceParser.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((ftn) menu).ai();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
