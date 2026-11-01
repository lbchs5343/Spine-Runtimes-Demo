package g;

import android.accessibilityservice.AccessibilityService;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class gk extends AccessibilityService {

    /* renamed from: a, reason: collision with root package name */
    public static CharSequence f18289a;

    /* renamed from: b, reason: collision with root package name */
    public static final Rect f18290b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    public static CharSequence f18291c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f18292d;

    /* renamed from: e, reason: collision with root package name */
    public fao f18293e;

    /* renamed from: f, reason: collision with root package name */
    public eqi f18294f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18295g;
    public String h;
    public String i;
    public Context j;
    public gxt k;
    public AtomicBoolean l;

    public static AccessibilityNodeInfo m(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT > 28) {
            arrayList.add("androidx.recyclerview.widget.RecyclerView");
            arrayList.add(RecyclerView.class.getName());
            arrayList.add(ListView.class.getName());
        } else {
            arrayList.add(RecyclerView.class.getName());
            arrayList.add(ListView.class.getName());
            arrayList.add("androidx.recyclerview.widget.RecyclerView");
        }
        HashSet hashSet = new HashSet(arrayList);
        AccessibilityNodeInfo accessibilityNodeInfo2 = ern.f16037c;
        if (acw.u(hashSet)) {
            return null;
        }
        HashSet hashSet2 = new HashSet();
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(160);
        arrayBlockingQueue.add(accessibilityNodeInfo);
        while (!arrayBlockingQueue.isEmpty()) {
            AccessibilityNodeInfo accessibilityNodeInfo3 = (AccessibilityNodeInfo) arrayBlockingQueue.poll();
            if (hashSet.contains(accessibilityNodeInfo3.getClassName())) {
                return accessibilityNodeInfo3;
            }
            if (hashSet2.add(accessibilityNodeInfo3)) {
                for (int i = 0; i < accessibilityNodeInfo3.getChildCount(); i++) {
                    AccessibilityNodeInfo child = accessibilityNodeInfo3.getChild(i);
                    if (child != null) {
                        arrayBlockingQueue.offer(child);
                    }
                }
            }
        }
        return null;
    }

    public static void n(AccessibilityNodeInfo accessibilityNodeInfo, ArrayList arrayList) {
        if (accessibilityNodeInfo == null) {
            return;
        }
        if (TextView.class.getName().equals(accessibilityNodeInfo.getClassName()) && !TextUtils.isEmpty(accessibilityNodeInfo.getText()) && accessibilityNodeInfo.isEnabled()) {
            String charSequence = accessibilityNodeInfo.getText().toString();
            if ((dyd.ar(18) || accessibilityNodeInfo.getViewIdResourceName() != null) && !arrayList.contains(charSequence)) {
                arrayList.add(charSequence.trim());
            }
        }
        if (accessibilityNodeInfo.getChildCount() <= 0) {
            return;
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                n(child, arrayList);
            }
        }
    }

    public final void o(int i, boolean z) {
        Context context;
        if (!z || (context = this.j) == null) {
            return;
        }
        gm.e(context, i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:46|(1:51)|(2:52|53)|(5:370|371|372|(5:376|(2:447|448)(3:380|381|(8:431|432|(4:435|(3:437|438|439)(1:441)|440|433)|442|443|79|(2:81|(3:86|(2:334|(1:336))(1:100)|101))|337)(7:383|(1:385)(1:(2:427|(1:429)(1:430))(1:426))|386|387|388|389|(7:394|395|(4:398|(3:400|401|402)(1:404)|403|396)|405|406|(0)|337)(2:391|392)))|393|373|374)|449)(1:55)|56|(2:58|(4:61|(3:63|64|65)(1:67)|66|59))|68|69|(6:71|(4:73|(1:75)(1:338)|76|(4:78|79|(0)|337))|339|340|(0)|337)|342|(3:344|345|(3:349|(2:351|352)(1:354)|353)(2:362|355))|366|(1:360)|361|(0)|337) */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0386, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0235, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x0246, code lost:
    
        g.erl.ac(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x06d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06fe  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0251 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0271 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x021e A[Catch: Exception -> 0x0235, TryCatch #7 {Exception -> 0x0235, blocks: (B:69:0x0214, B:71:0x021e, B:73:0x0224, B:76:0x022e, B:339:0x0237), top: B:68:0x0214 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x028b  */
    @Override // android.accessibilityservice.AccessibilityService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        AccessibilityNodeInfo accessibilityNodeInfo;
        boolean z;
        CharSequence charSequence;
        ert ertVar;
        AccessibilityNodeInfo accessibilityNodeInfo2;
        AccessibilityNodeInfo accessibilityNodeInfo3;
        CharSequence charSequence2;
        List<AccessibilityWindowInfo> list;
        List<AccessibilityWindowInfo> list2;
        boolean z2;
        AccessibilityNodeInfo accessibilityNodeInfo4;
        AccessibilityNodeInfo rootInActiveWindow;
        Iterator<AccessibilityWindowInfo> it;
        AccessibilityWindowInfo next;
        Iterator<AccessibilityWindowInfo> it2;
        if (accessibilityEvent == null) {
            return;
        }
        if (this.j == null) {
            this.j = getApplicationContext();
        }
        if (this.f18294f == null) {
            this.f18294f = new eqi(this, 8);
        }
        int i = 1;
        if (Build.VERSION.SDK_INT >= 29) {
            if (this.f18293e == null) {
                if (bli.n != null) {
                    this.f18293e = new fao(this, this.f18294f, new aoi(17, this));
                }
            }
            fao faoVar = this.f18293e;
            ert ertVar2 = bli.n;
            if (ertVar2 == null) {
                faoVar.q();
            } else {
                gqy gqyVar = (gqy) faoVar.f16477d;
                if (gqyVar == null || gqyVar.h != ertVar2) {
                    faoVar.q();
                    faoVar.f16477d = new gqy(ertVar2, SystemClock.uptimeMillis());
                    faoVar.p();
                }
                if (TextUtils.equals("com.android.settings", accessibilityEvent.getPackageName()) && accessibilityEvent.getWindowId() >= 0) {
                    ((gqy) faoVar.f16477d).f18615d = accessibilityEvent.getWindowId();
                }
                int eventType = accessibilityEvent.getEventType();
                if (eventType == 32 || eventType == 2048 || eventType == 4194304 || eventType == 4096 || eventType == 1) {
                    faoVar.p();
                }
            }
        }
        try {
            accessibilityNodeInfo = accessibilityEvent.getSource();
        } catch (Exception e2) {
            erl.ac(e2);
            accessibilityNodeInfo = null;
        }
        int eventType2 = accessibilityEvent.getEventType();
        CharSequence packageName = accessibilityEvent.getPackageName();
        CharSequence className = accessibilityEvent.getClassName();
        CharSequence charSequence3 = f18289a;
        CharSequence charSequence4 = f18291c;
        boolean z3 = (TextUtils.isEmpty(packageName) || dyd.am(packageName)) && (eventType2 == 32 || eventType2 == 2048 || eventType2 == 4096 || eventType2 == 4194304 || TextUtils.equals("com.tencent.mm", packageName) || (!TextUtils.isEmpty(charSequence4) && TextUtils.equals(charSequence3, packageName) && TextUtils.equals(charSequence4, className)));
        CharSequence className2 = accessibilityEvent.getClassName();
        if (z3) {
            int windowId = accessibilityEvent.getWindowId();
            CharSequence packageName2 = accessibilityEvent.getPackageName();
            if (accessibilityEvent.getEventType() == 32 && windowId >= 0 && dyd.am(packageName2)) {
                dyd.w = packageName2.toString();
                dyd.n = windowId;
            }
            try {
                list2 = getWindows();
            } catch (Exception e3) {
                e = e3;
                z = z3;
                list2 = null;
            } catch (Throwable th) {
                th = th;
                list = null;
                if (list != null) {
                }
                throw th;
            }
            if (list2 != null) {
                try {
                    try {
                        it = list2.iterator();
                        z2 = false;
                    } catch (Exception e4) {
                        e = e4;
                        z = z3;
                        z2 = false;
                        erl.ac(e);
                        if (list2 != null) {
                            for (AccessibilityWindowInfo accessibilityWindowInfo : list2) {
                                if (accessibilityWindowInfo != null) {
                                    accessibilityWindowInfo.recycle();
                                }
                            }
                        }
                        rootInActiveWindow = getRootInActiveWindow();
                        if (dyd.bk(rootInActiveWindow, windowId, packageName2)) {
                        }
                        HashSet hashSet = new HashSet();
                        accessibilityNodeInfo4 = null;
                        while (accessibilityNodeInfo != null) {
                        }
                        if (accessibilityNodeInfo4 != null) {
                            dyd.at(accessibilityNodeInfo4.getPackageName(), accessibilityNodeInfo4.getWindowId(), 1, true, false);
                        }
                        accessibilityNodeInfo = accessibilityNodeInfo4;
                        if (accessibilityNodeInfo != null) {
                        }
                        accessibilityNodeInfo = null;
                        if (accessibilityEvent.getEventType() == 32) {
                        }
                        if (accessibilityNodeInfo == null) {
                        }
                        if (ern.i(accessibilityEvent.getPackageName())) {
                        }
                    }
                    while (it.hasNext()) {
                        try {
                            next = it.next();
                        } catch (Exception e5) {
                            e = e5;
                            z = z3;
                        }
                        if (next == null || next.getId() != windowId) {
                            it2 = it;
                            z = z3;
                        } else {
                            try {
                            } catch (Exception e6) {
                                e = e6;
                                z = z3;
                            }
                            if (next.getType() != i) {
                                for (AccessibilityWindowInfo accessibilityWindowInfo2 : list2) {
                                    if (accessibilityWindowInfo2 != null) {
                                        accessibilityWindowInfo2.recycle();
                                    }
                                }
                                z = z3;
                                accessibilityNodeInfo = null;
                                if (accessibilityNodeInfo != null) {
                                    CharSequence packageName3 = accessibilityNodeInfo.getPackageName();
                                    int windowId2 = accessibilityNodeInfo.getWindowId();
                                    int i2 = dyd.p;
                                    if (i2 < 0 || (i2 == windowId2 && TextUtils.equals(dyd.z, packageName3))) {
                                        CharSequence charSequence5 = f18289a;
                                        CharSequence charSequence6 = f18291c;
                                        className2 = accessibilityEvent.getClassName();
                                        if (TextUtils.equals(charSequence5, accessibilityNodeInfo.getPackageName()) && !TextUtils.isEmpty(charSequence6) && (accessibilityEvent.getEventType() != 32 || TextUtils.isEmpty(className2) || TextUtils.equals(className2, accessibilityNodeInfo.getClassName()) || className2.toString().startsWith("android.") || className2.toString().startsWith("androidx."))) {
                                            className2 = charSequence6;
                                        } else if (TextUtils.isEmpty(className2)) {
                                            className2 = accessibilityNodeInfo.getClassName();
                                        }
                                        f18289a = accessibilityNodeInfo.getPackageName();
                                        f18291c = className2;
                                    }
                                }
                                accessibilityNodeInfo = null;
                            } else {
                                AccessibilityNodeInfo root = next.getRoot();
                                it2 = it;
                                z = z3;
                                try {
                                    dyd.at(!TextUtils.isEmpty(packageName2) ? packageName2 : (root == null || TextUtils.isEmpty(root.getPackageName())) ? next.getId() == dyd.n ? dyd.w : null : root.getPackageName(), next.getId(), next.getType(), next.isActive(), next.isFocused());
                                } catch (Exception e7) {
                                    e = e7;
                                    z2 = true;
                                    erl.ac(e);
                                    if (list2 != null) {
                                    }
                                    rootInActiveWindow = getRootInActiveWindow();
                                    if (dyd.bk(rootInActiveWindow, windowId, packageName2)) {
                                    }
                                    HashSet hashSet2 = new HashSet();
                                    accessibilityNodeInfo4 = null;
                                    while (accessibilityNodeInfo != null) {
                                    }
                                    if (accessibilityNodeInfo4 != null) {
                                    }
                                    accessibilityNodeInfo = accessibilityNodeInfo4;
                                    if (accessibilityNodeInfo != null) {
                                    }
                                    accessibilityNodeInfo = null;
                                    if (accessibilityEvent.getEventType() == 32) {
                                    }
                                    if (accessibilityNodeInfo == null) {
                                    }
                                    if (ern.i(accessibilityEvent.getPackageName())) {
                                    }
                                }
                                if (dyd.bk(root, windowId, packageName2)) {
                                    for (AccessibilityWindowInfo accessibilityWindowInfo3 : list2) {
                                        if (accessibilityWindowInfo3 != null) {
                                            accessibilityWindowInfo3.recycle();
                                        }
                                    }
                                    accessibilityNodeInfo = root;
                                    if (accessibilityNodeInfo != null) {
                                    }
                                    accessibilityNodeInfo = null;
                                } else {
                                    z2 = true;
                                }
                            }
                        }
                        it = it2;
                        z3 = z;
                        i = 1;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    list = list2;
                    if (list != null) {
                        for (AccessibilityWindowInfo accessibilityWindowInfo4 : list) {
                            if (accessibilityWindowInfo4 != null) {
                                accessibilityWindowInfo4.recycle();
                            }
                        }
                    }
                    throw th;
                }
            } else {
                z2 = false;
            }
            z = z3;
            if (list2 != null) {
                for (AccessibilityWindowInfo accessibilityWindowInfo5 : list2) {
                    if (accessibilityWindowInfo5 != null) {
                        accessibilityWindowInfo5.recycle();
                    }
                }
            }
            rootInActiveWindow = getRootInActiveWindow();
            if (dyd.bk(rootInActiveWindow, windowId, packageName2)) {
                AccessibilityWindowInfo window = rootInActiveWindow.getWindow();
                if (window != null) {
                    boolean z4 = window.getType() == 1;
                    window.recycle();
                    if (!z4) {
                        accessibilityNodeInfo = null;
                        if (accessibilityNodeInfo != null) {
                        }
                        accessibilityNodeInfo = null;
                    }
                }
                dyd.at(rootInActiveWindow.getPackageName(), rootInActiveWindow.getWindowId(), 1, true, false);
                accessibilityNodeInfo = rootInActiveWindow;
                if (accessibilityNodeInfo != null) {
                }
                accessibilityNodeInfo = null;
            }
            HashSet hashSet22 = new HashSet();
            accessibilityNodeInfo4 = null;
            while (accessibilityNodeInfo != null) {
                try {
                    if (hashSet22.size() >= 100 || !hashSet22.add(accessibilityNodeInfo)) {
                        break;
                    }
                    if (dyd.bk(accessibilityNodeInfo, windowId, packageName2)) {
                        accessibilityNodeInfo4 = accessibilityNodeInfo;
                    }
                    accessibilityNodeInfo = accessibilityNodeInfo.getParent();
                } catch (Exception e8) {
                    erl.ac(e8);
                }
            }
            if (accessibilityNodeInfo4 != null && !z2 && accessibilityEvent.getEventType() == 32) {
                dyd.at(accessibilityNodeInfo4.getPackageName(), accessibilityNodeInfo4.getWindowId(), 1, true, false);
            }
            accessibilityNodeInfo = accessibilityNodeInfo4;
            if (accessibilityNodeInfo != null) {
            }
            accessibilityNodeInfo = null;
        } else {
            z = z3;
        }
        if (accessibilityEvent.getEventType() == 32 || TextUtils.isEmpty(accessibilityEvent.getClassName())) {
            if (accessibilityNodeInfo == null && (z || (f18291c != null && (charSequence = f18289a) != null && charSequence.equals(accessibilityEvent.getPackageName()) && f18291c.equals(accessibilityEvent.getClassName())))) {
                ern.n(accessibilityNodeInfo, className2);
                return;
            }
            if (ern.i(accessibilityEvent.getPackageName())) {
                ern.m();
                return;
            }
            if (!"com.tencent.mm".equals(accessibilityEvent.getPackageName()) || accessibilityNodeInfo == null) {
                return;
            }
            for (AccessibilityNodeInfo parent = accessibilityNodeInfo.getParent(); parent != null; parent = parent.getParent()) {
                Rect rect = f18290b;
                parent.getBoundsInScreen(rect);
                if (!ern.k(rect)) {
                    accessibilityNodeInfo = parent;
                }
            }
            ern.n(accessibilityNodeInfo, className2);
            return;
        }
        if (ern.i(accessibilityEvent.getPackageName()) || accessibilityNodeInfo == null) {
            ern.m();
        } else {
            ern.n(accessibilityNodeInfo, className2);
            f18289a = accessibilityNodeInfo.getPackageName();
            f18291c = className2;
        }
        if (f18292d && !TextUtils.isEmpty(accessibilityEvent.getPackageName()) && !TextUtils.isEmpty(accessibilityEvent.getClassName())) {
            if (TextUtils.isEmpty(accessibilityEvent.getContentDescription())) {
                List<CharSequence> text = accessibilityEvent.getText();
                if (!acw.u(text)) {
                    charSequence2 = text.get(0);
                }
                charSequence2 = "";
            } else {
                charSequence2 = accessibilityEvent.getContentDescription();
            }
            if (this.i == null) {
                this.i = getString(R.string.hidden);
            }
            ejn ejnVar = new ejn(accessibilityEvent, charSequence2);
            ejnVar.setClassName(ern.i(accessibilityEvent.getPackageName()) ? this.i : accessibilityEvent.getClassName());
            fzn.l(getApplicationContext()).q(new Intent("window_state_changed").putExtra("package_name", accessibilityEvent.getPackageName()).putExtra("accessibility_event_simple", ejnVar));
        }
        if (Build.VERSION.SDK_INT >= 29 || !"com.android.settings".equals(accessibilityEvent.getPackageName()) || (ertVar = bli.n) == null) {
            return;
        }
        CharSequence className3 = accessibilityEvent.getClassName();
        if (className3 != null) {
            String trim = className3.toString().trim();
            if (trim.indexOf("com.android.settings") == 0 || trim.indexOf("android.app.AlertDialog") == 0 || trim.indexOf("android.") != 0) {
                if (accessibilityNodeInfo == null) {
                    try {
                        accessibilityNodeInfo = accessibilityEvent.getSource();
                    } catch (Exception e9) {
                        erl.ac(e9);
                        accessibilityNodeInfo = null;
                    }
                }
                if (accessibilityNodeInfo == null) {
                    return;
                }
                if (!"android.app.AlertDialog".equals(accessibilityEvent.getClassName()) && (!fnp.n() || !"com.android.settings.OptionsActivity".equals(accessibilityEvent.getClassName()))) {
                    this.f18295g = false;
                    this.h = null;
                    boolean q = q(accessibilityNodeInfo, ertVar, false, accessibilityEvent.getClassName());
                    if (!q) {
                        gxt u = u();
                        int i3 = u.f18972a;
                        if (i3 <= 10 || u.f18973b <= i3 * 0.85f) {
                            int i4 = u.f18976f;
                            if (i4 * 2 < 300) {
                                u.f18976f = (int) (i4 * 2.0f);
                            } else if (u.f18973b > i3 * 0.3d) {
                                u.f18976f = i4 + 100;
                            }
                        } else {
                            int i5 = u.f18976f;
                            u.f18976f = (int) (i5 * (i5 >= 300 ? 1.2f : 1.5f));
                        }
                        if (u.f18976f > 450) {
                            u.f18976f = MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME;
                        }
                        cro.az((Context) u.f18974c, u.f18976f, "access_sleep_time");
                        if (!TextUtils.isEmpty(this.h)) {
                            String str = ertVar.q;
                            dzm.av(this.j, "similar_" + str, str);
                            Context context = this.j;
                            acw.au(context, TextUtils.join("_", new String[]{"dev_text", acr.bo(context), ertVar.q}), this.h);
                        }
                        q = q(accessibilityNodeInfo, ertVar, true, accessibilityEvent.getClassName());
                    }
                    if (ertVar.f16058g) {
                        return;
                    }
                    r(ertVar, q);
                    return;
                }
                ert ertVar3 = bli.n;
                if (ertVar3 == null) {
                    return;
                }
                if (!"overdraw".equals(ertVar3.q) && !"track_gpu_frame".equals(ertVar3.q)) {
                    if ("usb_debugging".equals(ertVar3.q)) {
                        ArrayList ao = acr.ao(this.j, "debug_usb_debugging_open");
                        ertVar3.f16058g = false;
                        if (acw.u(ao)) {
                            fso.y(this.j, ertVar3.q, "fail_accessibility_dialog_not_in_scope");
                            o(R.string.error_dialog_not_in_scope, true);
                            s(ertVar3, false);
                            return;
                        }
                        String str2 = (String) ao.get(0);
                        if (!TextUtils.isEmpty(str2)) {
                            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText(str2);
                            if (!acw.u(findAccessibilityNodeInfosByText) && (accessibilityNodeInfo3 = findAccessibilityNodeInfosByText.get(0)) != null) {
                                if (dyd.bp(18)) {
                                    accessibilityNodeInfo3.refresh();
                                }
                                boolean performAction = accessibilityNodeInfo3.performAction(16);
                                s(ertVar3, performAction);
                                ertVar3.aa(performAction);
                                r(ertVar3, performAction);
                                return;
                            }
                        }
                        p(ertVar3, true);
                        return;
                    }
                    return;
                }
                if (fnp.n()) {
                    fso.y(this.j, ertVar3.q, "fail_accessibility_smartisan_checked_status_error");
                    o(R.string.error_smartisan_checked_status_error, true);
                    s(ertVar3, false);
                    return;
                }
                List list3 = (List) acr.n.get(ertVar3.q);
                if (list3 == null || list3.size() < 2) {
                    fso.y(this.j, ertVar3.q, "fail_accessibility_dialog_not_in_scope");
                    o(R.string.error_dialog_not_in_scope, true);
                    s(ertVar3, false);
                    return;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                LinkedList linkedList = new LinkedList();
                linkedList.add(accessibilityNodeInfo);
                while (!linkedList.isEmpty()) {
                    AccessibilityNodeInfo accessibilityNodeInfo5 = (AccessibilityNodeInfo) linkedList.poll();
                    if (linkedHashSet.add(accessibilityNodeInfo5)) {
                        for (int i6 = 0; i6 < accessibilityNodeInfo5.getChildCount(); i6++) {
                            AccessibilityNodeInfo child = accessibilityNodeInfo5.getChild(i6);
                            if (child != null) {
                                linkedList.offer(child);
                            }
                        }
                    }
                }
                ArrayList arrayList = new ArrayList(linkedHashSet);
                ArrayList arrayList2 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    AccessibilityNodeInfo accessibilityNodeInfo6 = (AccessibilityNodeInfo) it3.next();
                    if (accessibilityNodeInfo6 != null && !TextUtils.isEmpty(accessibilityNodeInfo6.getText())) {
                        arrayList2.add(accessibilityNodeInfo6.getText().toString());
                    }
                }
                gxt u2 = u();
                ArrayList ao2 = acr.ao(this.j, (String) list3.get(1));
                u2.getClass();
                String i7 = gxt.i(arrayList2, ao2);
                if (!TextUtils.isEmpty(i7)) {
                    List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText2 = accessibilityNodeInfo.findAccessibilityNodeInfosByText(i7);
                    if (!acw.u(findAccessibilityNodeInfosByText2) && (accessibilityNodeInfo2 = findAccessibilityNodeInfosByText2.get(0)) != null) {
                        boolean isChecked = accessibilityNodeInfo2.isChecked();
                        if (isChecked) {
                            gxt u3 = u();
                            ArrayList ao3 = acr.ao(this.j, (String) list3.get(0));
                            u3.getClass();
                            String i8 = gxt.i(arrayList2, ao3);
                            if (!TextUtils.isEmpty(i8)) {
                                List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText3 = accessibilityNodeInfo.findAccessibilityNodeInfosByText(i8);
                                if (!acw.u(findAccessibilityNodeInfosByText3)) {
                                    accessibilityNodeInfo2 = findAccessibilityNodeInfosByText3.get(0);
                                }
                            }
                            p(ertVar3, false);
                            return;
                        }
                        if (fnp.n() && accessibilityNodeInfo2.getParent() != null) {
                            accessibilityNodeInfo2 = accessibilityNodeInfo2.getParent();
                        }
                        if (dyd.bp(18)) {
                            accessibilityNodeInfo2.refresh();
                        }
                        boolean performAction2 = accessibilityNodeInfo2.performAction(16);
                        s(ertVar3, performAction2);
                        if (performAction2) {
                            ertVar3.aa(!isChecked);
                        } else {
                            ertVar3.aa(isChecked);
                        }
                        r(ertVar3, performAction2);
                        return;
                    }
                }
                p(ertVar3, true);
                return;
            }
        }
        accessibilityEvent.toString();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        fao faoVar = this.f18293e;
        if (faoVar != null) {
            faoVar.q();
        }
        bli.n = null;
        super.onDestroy();
        ern.n(null, null);
        bew.q();
        dyd.z = null;
        dyd.p = -1;
        dyd.w = null;
        dyd.n = -1;
        f18289a = null;
        f18291c = null;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
        fao faoVar = this.f18293e;
        if (faoVar != null) {
            faoVar.q();
        }
        bli.n = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        if (r5.equals("track_gpu_frame") == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r5.equals("track_gpu_frame") == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(ert ertVar, boolean z) {
        if (z) {
            String str = ertVar.q;
            str.getClass();
            if (str.equals("overdraw")) {
                fso.y(this.j, ertVar.q, "fail_accessibility_no_overdraw_show");
                o(R.string.error_no_show_overdraw_areas, true);
            }
            fso.y(this.j, ertVar.q, "fail_accessibility_no_track_gpu_show");
            o(R.string.error_no_show_track_gpu, true);
        } else {
            String str2 = ertVar.q;
            str2.getClass();
            if (str2.equals("overdraw")) {
                fso.y(this.j, ertVar.q, "fail_accessibility_no_overdraw_close");
                o(R.string.error_no_close_overdraw_areas, true);
            }
            fso.y(this.j, ertVar.q, "fail_accessibility_no_track_gpu_close");
            o(R.string.error_no_close_track_gpu, true);
        }
        s(ertVar, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0251, code lost:
    
        g.fso.y(r17.j, r19.q, "fail_accessibility_no_switch");
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x025e, code lost:
    
        if (g.fnp.f() == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0261, code lost:
    
        r8 = cn.trinea.android.developertools.R.string.error_no_clickable;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0264, code lost:
    
        o(r8, r20);
        s(r19, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x026a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(AccessibilityNodeInfo accessibilityNodeInfo, ert ertVar, boolean z, CharSequence charSequence) {
        AccessibilityNodeInfo accessibilityNodeInfo2;
        int i;
        List j;
        boolean performAction;
        Context context;
        AccessibilityNodeInfo m = m(accessibilityNodeInfo);
        int i2 = 2;
        boolean z2 = false;
        if (m == null) {
            if (cro.an(this.j, "datetrinea", false) && z) {
                he fromAccessibilityNodeInfo = he.fromAccessibilityNodeInfo(accessibilityNodeInfo, 1, charSequence);
                if (fromAccessibilityNodeInfo == null) {
                    gm.f(this.j, R.string.li_export_no);
                } else if (dyd.aa() || eyt.am(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    AtomicBoolean atomicBoolean = this.l;
                    if (!atomicBoolean.get()) {
                        atomicBoolean.set(true);
                        ffb.as().execute(new gfh(26, this, fromAccessibilityNodeInfo, z2));
                    }
                } else {
                    gm.j(this.j, R.string.content_request_permission2, "android.permission.WRITE_EXTERNAL_STORAGE", getString(R.string.manifest_save_text));
                }
            }
            fso.am(this.j, ertVar, "fail_accessibility_no_listview");
            o(R.string.error_no_list_options, z);
            s(ertVar, false);
            return false;
        }
        String av = acr.av(this.j, ertVar.q);
        ArrayList arrayList = new ArrayList();
        Context context2 = this.j;
        boolean an = cro.an(context2, TextUtils.join("_", new String[]{"dev_match", acr.bo(context2), ertVar.q}), false);
        AccessibilityNodeInfo accessibilityNodeInfo3 = null;
        List<AccessibilityNodeInfo> list = null;
        boolean z3 = true;
        while (z3 && m != null) {
            list = m.findAccessibilityNodeInfosByText(av);
            if (!acw.u(list)) {
                break;
            }
            if (!an && !z) {
                if (dyd.bp(16)) {
                    m = m(getRootInActiveWindow());
                }
                n(m, arrayList);
            }
            if (m != null) {
                z3 = m.performAction(this.f18295g ? 8192 : 4096);
            }
            t();
        }
        if (acw.u(list)) {
            this.f18295g = !this.f18295g;
            if (!an && !z) {
                gxt u = u();
                ArrayList ao = acr.ao(this.j, ertVar.q);
                u.getClass();
                this.h = gxt.i(arrayList, ao);
            }
            fso.y(this.j, ertVar.q, "fail_accessibility_no_text");
            String string = getResources().getString(R.string.error_no_option, av);
            if (z && (context = this.j) != null) {
                gm.k(context, string);
            }
            s(ertVar, false);
            return false;
        }
        if (!an || z) {
            Context context3 = this.j;
            cro.af(context3, TextUtils.join("_", new String[]{"dev_match", acr.bo(context3), ertVar.q}), true);
        }
        AccessibilityNodeInfo parent = list.get(0).getParent();
        if (parent == null || (accessibilityNodeInfo2 = parent.getParent()) == null) {
            accessibilityNodeInfo2 = parent;
            i = 1;
        } else {
            i = 2;
        }
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            int i3 = i - 1;
            if (i <= 0) {
                if (accessibilityNodeInfo3 != null) {
                    if (z) {
                        t();
                    }
                    if (z4) {
                        ertVar.aa(!z5);
                    } else {
                        ertVar.aa(z5);
                    }
                }
                if (!z4) {
                    fso.y(this.j, ertVar.q, "fail_accessibility_switch_fail");
                    o(R.string.error_switch, z);
                    s(ertVar, false);
                    return false;
                }
                if (accessibilityNodeInfo3 != null && ("overdraw".equals(ertVar.q) || "track_gpu_frame".equals(ertVar.q))) {
                    ertVar.f16058g = false;
                }
                if (!"usb_debugging".equals(ertVar.q)) {
                    if (!ertVar.f16058g) {
                        fso.y(this.j, ertVar.q, "success");
                        s(ertVar, true);
                    }
                    return true;
                }
                if (!z5) {
                    ertVar.f16058g = true;
                    return true;
                }
                fso.y(this.j, ertVar.q, "success");
                s(ertVar, true);
                return true;
            }
            if (accessibilityNodeInfo2 == null) {
                fso.y(this.j, ertVar.q, "fail_accessibility_no_text_parent");
                o(R.string.error_no_clickable, z);
                s(ertVar, false);
                return false;
            }
            if (fnp.n()) {
                AccessibilityNodeInfo accessibilityNodeInfo4 = ern.f16037c;
                j = ern.j(accessibilityNodeInfo2, new HashSet(Arrays.asList("smartisanos.widget.SwitchEx")));
            } else {
                Class[] clsArr = new Class[i2];
                clsArr[0] = Switch.class;
                clsArr[1] = CheckBox.class;
                AccessibilityNodeInfo accessibilityNodeInfo5 = ern.f16037c;
                HashSet hashSet = new HashSet();
                int i4 = 0;
                while (i4 < i2) {
                    Class cls = clsArr[i4];
                    if (cls != null) {
                        hashSet.add(cls.getName());
                    }
                    i4++;
                    i2 = 2;
                }
                j = ern.j(accessibilityNodeInfo2, hashSet);
            }
            boolean i5 = fnp.i();
            int i6 = R.string.error_vivo_switch_view_error;
            if (i5 && acw.u(j) && !ertVar.f16058g) {
                HashSet hashSet2 = new HashSet();
                Class cls2 = new Class[]{View.class}[0];
                if (cls2 != null) {
                    hashSet2.add(cls2.getName());
                }
                j = ern.j(accessibilityNodeInfo2, hashSet2);
                if (!acw.u(j)) {
                    fso.y(this.j, ertVar.q, "fail_accessibility_vivo_switch_view_error");
                    o(R.string.error_vivo_switch_view_error, z);
                    s(ertVar, false);
                    return false;
                }
            }
            if (!acw.u(j)) {
                AccessibilityNodeInfo accessibilityNodeInfo6 = (AccessibilityNodeInfo) j.get(0);
                if (accessibilityNodeInfo6 != null) {
                    if (dyd.bp(18)) {
                        accessibilityNodeInfo6.refresh();
                    }
                    z5 = accessibilityNodeInfo6.isChecked();
                }
                accessibilityNodeInfo3 = accessibilityNodeInfo6;
            }
            if (accessibilityNodeInfo2.isClickable()) {
                if (z) {
                    t();
                }
                performAction = ((fnp.n() || fnp.i()) && accessibilityNodeInfo3 != null) ? accessibilityNodeInfo3.performAction(16) : accessibilityNodeInfo2.performAction(16);
            } else if (accessibilityNodeInfo3 != null) {
                performAction = accessibilityNodeInfo3.performAction(z5 ? 8 : 131072);
                if (!performAction) {
                    performAction = accessibilityNodeInfo3.performAction(16);
                }
                if (!z5 && !performAction) {
                    performAction = accessibilityNodeInfo3.performAction(4);
                }
            } else {
                if (i3 <= 0 || accessibilityNodeInfo2 == parent) {
                    break;
                }
                accessibilityNodeInfo2 = !parent.isClickable() ? accessibilityNodeInfo2.getParent() : parent;
                i = i3;
                i2 = 2;
            }
            z4 = performAction;
            i2 = 2;
            i = 0;
        }
    }

    public final void r(ert ertVar, boolean z) {
        if (!z && ertVar.f16056e) {
            acw.aa(this.j);
        }
        if (!z || ertVar.u == null) {
            return;
        }
        Context context = this.j;
        int av = cro.av(context, 0, "success_count");
        cro.az(context, av + 1, "success_count");
        int i = R.string.result_close;
        if (av < 2) {
            StringBuilder o = awf.o(getString(R.string.result_tool_switch, getString(ertVar.u.booleanValue() ? R.string.result_open : R.string.result_close), ertVar.z(this.j)));
            o.append(getString(R.string.result_reclick_tip));
            StringBuilder o2 = awf.o(o.toString());
            if (!ertVar.u.booleanValue()) {
                i = R.string.result_open;
            }
            o2.append(getString(i));
            StringBuilder o3 = awf.o(o2.toString());
            o3.append(getString(R.string.sign_period));
            fzn.l(getApplicationContext()).q(new Intent("first_use_accessibility").putExtra("tips", o3.toString()));
            return;
        }
        if (av == 2) {
            v(R.string.result_shortcut_tip, av - 2);
            return;
        }
        if (dyd.bp(24)) {
            if (av == 3) {
                v(R.string.result_shortcut_tip70, av - 2);
                return;
            } else if (dyd.bp(25) && av == 4) {
                v(R.string.result_shortcut_tip71, av - 2);
                return;
            }
        }
        if (ertVar.u.booleanValue()) {
            i = R.string.result_open;
        }
        gm.k(this.j, getString(R.string.result_tool_switch, getString(i), ertVar.z(this.j)));
    }

    public final void s(ert ertVar, boolean z) {
        u().k(z);
        if (z && dyd.bp(16)) {
            t();
            if (ertVar == null || ertVar.w) {
                performGlobalAction(1);
            }
        }
        bli.n = null;
    }

    public final void t() {
        gxt u = u();
        if (u.f18976f <= 50) {
            return;
        }
        try {
            synchronized (u.f18975d) {
                u.f18975d.wait(u.f18976f);
            }
        } catch (InterruptedException unused) {
        }
    }

    public final gxt u() {
        if (this.k == null) {
            synchronized (gk.class) {
                try {
                    if (this.k == null) {
                        this.k = new gxt(this.j);
                    }
                } finally {
                }
            }
        }
        return this.k;
    }

    public final void v(int i, int i2) {
        fzn.l(getApplicationContext()).q(new Intent("first_use_accessibility").putExtra("tips", getString(i, Integer.valueOf(i2))));
    }
}
