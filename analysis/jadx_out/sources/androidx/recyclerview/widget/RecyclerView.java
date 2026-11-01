package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.bykv.vk.component.ttvideo.player.C;
import g.agn;
import g.akn;
import g.aqz;
import g.atv;
import g.awd;
import g.awf;
import g.bcp;
import g.bjd;
import g.bms;
import g.bng;
import g.bnj;
import g.btu;
import g.bur;
import g.cd;
import g.cmb;
import g.cuq;
import g.cyd;
import g.dcq;
import g.dgn;
import g.dit;
import g.dmy;
import g.doi;
import g.dvv;
import g.dxj;
import g.dyd;
import g.eg;
import g.egh;
import g.eiu;
import g.evf;
import g.ewo;
import g.fak;
import g.fc;
import g.fji;
import g.fkf;
import g.fmk;
import g.fsc;
import g.geq;
import g.gfe;
import g.ggw;
import g.goi;
import g.grj;
import g.gsw;
import g.guh;
import g.haq;
import g.he;
import g.kr;
import g.rx;
import g.tn;
import g.wp;
import g.yx;
import g.zg;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final String LOW_RES_ROTARY_ENCODER_FEATURE = "android.hardware.rotaryencoder.lowres";
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled;
    static final dxj sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled;
    j mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    m mAdapter;
    h mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private bms mChildDrawingOrderCallback;
    n mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    cuq mDifferentialMotionFlingController;
    private final awd mDifferentialMotionFlingTarget;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private cyd mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    e mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private ewo mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    dgn mItemAnimator;
    private ggw mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<fji> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    b mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    boolean mLowResRotaryEncoderFeature;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final l mObserver;
    private List<fsc> mOnChildAttachStateListeners;
    private gfe mOnFlingListener;
    private final ArrayList<ewo> mOnItemTouchListeners;
    final List<p> mPendingAccessibilityImportanceChange;
    a mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    r mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final f mRecycler;
    dmy mRecyclerListener;
    final List<dmy> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    float mScaledHorizontalScrollFactor;
    float mScaledVerticalScrollFactor;
    private doi mScrollListener;
    private List<doi> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private dit mScrollingChildHelper;
    final aqz mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final k mViewFlinger;
    private final akn mViewInfoProcessCallback;
    final bng mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new d();
        Parcelable mLayoutState;

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? b.class.getClassLoader() : classLoader);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public void copyFrom(a aVar) {
            this.mLayoutState = aVar.mLayoutState;
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = false;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i >= 23;
        ALLOW_THREAD_GAP_WORK = true;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new bur(0);
        sDefaultEdgeEffectFactory = new dxj();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cn.trinea.android.developertools.R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float b2;
        Constructor constructor;
        this.mObserver = new l(this);
        this.mRecycler = new f(this);
        this.mViewInfoStore = new bng();
        this.mUpdateChildViewsRunnable = new s(this, 0);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        guh guhVar = new guh();
        Object[] objArr = null;
        guhVar.f14141c = null;
        guhVar.f14143e = new ArrayList();
        guhVar.f14144f = 120L;
        guhVar.f14139a = 120L;
        guhVar.f14140b = 250L;
        guhVar.f14142d = 250L;
        int i2 = 1;
        guhVar.x = true;
        guhVar.n = new ArrayList();
        guhVar.u = new ArrayList();
        guhVar.v = new ArrayList();
        guhVar.o = new ArrayList();
        guhVar.r = new ArrayList();
        guhVar.t = new ArrayList();
        guhVar.q = new ArrayList();
        guhVar.p = new ArrayList();
        guhVar.s = new ArrayList();
        guhVar.w = new ArrayList();
        guhVar.y = new ArrayList();
        this.mItemAnimator = guhVar;
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new k(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new r() : null;
        aqz aqzVar = new aqz();
        aqzVar.f10687g = -1;
        aqzVar.k = 0;
        aqzVar.m = 0;
        aqzVar.f10684d = 1;
        aqzVar.f10686f = 0;
        aqzVar.h = false;
        aqzVar.n = false;
        aqzVar.f10681a = false;
        aqzVar.j = false;
        aqzVar.l = false;
        aqzVar.f10682b = false;
        this.mState = aqzVar;
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        int i3 = 16;
        this.mItemAnimatorListener = new evf(i3, this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new s(this, i2);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new dcq(15, this);
        androidx.recyclerview.widget.a aVar = new androidx.recyclerview.widget.a(this);
        this.mDifferentialMotionFlingTarget = aVar;
        this.mDifferentialMotionFlingController = new cuq(getContext(), aVar);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            Method method = btu.f12200a;
            b2 = cmb.aa(viewConfiguration);
        } else {
            b2 = btu.b(viewConfiguration, context);
        }
        this.mScaledHorizontalScrollFactor = b2;
        this.mScaledVerticalScrollFactor = i4 >= 26 ? cmb.b(viewConfiguration) : btu.b(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f14141c = this.mItemAnimatorListener;
        initAdapterManager();
        this.mChildHelper = new n(new fc(i3, this));
        WeakHashMap weakHashMap = goi.f18490c;
        if ((i4 >= 26 ? haq.a(this) : 0) == 0 && i4 >= 26) {
            haq.b(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new j(this));
        int[] iArr = zg.f20393a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        goi.x(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(1, true);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z;
        if (z) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(6), obtainStyledAttributes.getDrawable(7), (StateListDrawable) obtainStyledAttributes.getDrawable(4), obtainStyledAttributes.getDrawable(5));
        }
        obtainStyledAttributes.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature(LOW_RES_ROTARY_ENCODER_FEATURE);
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                try {
                    Class<? extends U> asSubclass = Class.forName(trim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(b.class);
                    try {
                        constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i), 0};
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = asSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + trim, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((b) constructor.newInstance(objArr));
                } catch (ClassCastException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + trim, e4);
                } catch (ClassNotFoundException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + trim, e5);
                } catch (IllegalAccessException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + trim, e6);
                } catch (InstantiationException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e7);
                } catch (InvocationTargetException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e8);
                }
            }
        }
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        goi.x(this, context, iArr2, attributeSet, obtainStyledAttributes2, i);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        setTag(cn.trinea.android.developertools.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static void clearNestedRecyclerViewIfNotNested(p pVar) {
        WeakReference weakReference = pVar.p;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == pVar.n) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            pVar.p = null;
        }
    }

    public static int d(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && eg.w(edgeEffect) != 0.0f) {
            int round = Math.round(eg.h(edgeEffect, ((-i) * FLING_DESTRETCH_FACTOR) / i2, 0.5f) * ((-i2) / FLING_DESTRETCH_FACTOR));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || eg.w(edgeEffect2) == 0.0f) {
            return i;
        }
        float f2 = i2;
        int round2 = Math.round(eg.h(edgeEffect2, (i * FLING_DESTRETCH_FACTOR) / f2, 0.5f) * (f2 / FLING_DESTRETCH_FACTOR));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    public static p getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((yx) view.getLayoutParams()).f20371b;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        yx yxVar = (yx) view.getLayoutParams();
        Rect rect2 = yxVar.f20372c;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) yxVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) yxVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) yxVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) yxVar).bottomMargin);
    }

    private dit getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new dit(this);
        }
        return this.mScrollingChildHelper;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        sDebugAssertionsEnabled = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        sVerboseLoggingEnabled = z;
    }

    public void absorbGlows(int i, int i2) {
        if (i < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i);
            }
        } else if (i > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public void addItemDecoration(fji fjiVar) {
        addItemDecoration(fjiVar, -1);
    }

    public void addItemDecoration(fji fjiVar, int i) {
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.de("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(fjiVar);
        } else {
            this.mItemDecorations.add(i, fjiVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(fsc fscVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(fscVar);
    }

    public void addOnItemTouchListener(ewo ewoVar) {
        this.mOnItemTouchListeners.add(ewoVar);
    }

    public void addOnScrollListener(doi doiVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(doiVar);
    }

    public void addRecyclerListener(dmy dmyVar) {
        if (!(dmyVar != null)) {
            throw new IllegalArgumentException("'listener' arg cannot be null.");
        }
        this.mRecyclerListeners.add(dmyVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void animateAppearance(p pVar, geq geqVar, geq geqVar2) {
        boolean z;
        pVar.x(false);
        guh guhVar = (guh) this.mItemAnimator;
        if (geqVar != null) {
            guhVar.getClass();
            int i = geqVar.f17998a;
            int i2 = geqVar2.f17998a;
            if (i != i2 || geqVar.f17999b != geqVar2.f17999b) {
                z = guhVar.ae(pVar, i, geqVar.f17999b, i2, geqVar2.f17999b);
                if (z) {
                    return;
                }
                postAnimationRunner();
                return;
            }
        }
        guhVar.ab(pVar);
        pVar.n.setAlpha(0.0f);
        guhVar.u.add(pVar);
        z = true;
        if (z) {
        }
    }

    public void animateDisappearance(p pVar, geq geqVar, geq geqVar2) {
        boolean z;
        p(pVar);
        pVar.x(false);
        guh guhVar = (guh) this.mItemAnimator;
        guhVar.getClass();
        int i = geqVar.f17998a;
        int i2 = geqVar.f17999b;
        View view = pVar.n;
        int left = geqVar2 == null ? view.getLeft() : geqVar2.f17998a;
        int top = geqVar2 == null ? view.getTop() : geqVar2.f17999b;
        if (pVar.u() || (i == left && i2 == top)) {
            guhVar.ab(pVar);
            guhVar.n.add(pVar);
            z = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z = guhVar.ae(pVar, i, i2, left, top);
        }
        if (z) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str != null) {
            throw new IllegalStateException(awf.u(this, awf.o(str)));
        }
        throw new IllegalStateException(awf.u(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(awf.u(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.mDispatchScrollCounter > 0) {
            new IllegalStateException(awf.u(this, new StringBuilder("")));
        }
    }

    public boolean canReuseUpdatedViewHolder(p pVar) {
        dgn dgnVar = this.mItemAnimator;
        if (dgnVar != null) {
            return (pVar.ai().isEmpty() && ((guh) dgnVar).x && !pVar.ac()) ? false : true;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof yx) && this.mLayout.ab((yx) layoutParams);
    }

    public void clearOldPositions() {
        int f2 = this.mChildHelper.f();
        for (int i = 0; i < f2; i++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i));
            if (!childViewHolderInt.w()) {
                childViewHolderInt.k = -1;
                childViewHolderInt.f311d = -1;
            }
        }
        f fVar = this.mRecycler;
        ArrayList arrayList = fVar.f276d;
        ArrayList arrayList2 = fVar.f279g;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            p pVar = (p) arrayList2.get(i2);
            pVar.k = -1;
            pVar.f311d = -1;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            p pVar2 = (p) arrayList.get(i3);
            pVar2.k = -1;
            pVar2.f311d = -1;
        }
        ArrayList arrayList3 = fVar.f278f;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                p pVar3 = (p) fVar.f278f.get(i4);
                pVar3.k = -1;
                pVar3.f311d = -1;
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<fsc> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<doi> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.ca()) {
            return this.mLayout.cx(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.ca()) {
            return this.mLayout.q(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.ca()) {
            return this.mLayout.x(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.cd()) {
            return this.mLayout.cr(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.cd()) {
            return this.mLayout.w(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        b bVar = this.mLayout;
        if (bVar != null && bVar.cd()) {
            return this.mLayout.s(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.mLeftGlow.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.mRightGlow.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.mTopGlow.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.mBottomGlow.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    public int consumeFlingInHorizontalStretch(int i) {
        return d(i, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i) {
        return d(i, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.r()) {
            h hVar = this.mAdapterHelper;
            int i = hVar.f283d;
            if ((i & 4) == 0 || (i & 11) != 0) {
                if (hVar.r()) {
                    Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.p();
            if (!this.mLayoutWasDefered) {
                int h = this.mChildHelper.h();
                int i2 = 0;
                while (true) {
                    if (i2 < h) {
                        p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
                        if (childViewHolderInt != null && !childViewHolderInt.w() && childViewHolderInt.v()) {
                            dispatchLayout();
                            break;
                        }
                        i2++;
                    } else {
                        this.mAdapterHelper.o();
                        break;
                    }
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            Trace.endSection();
        }
    }

    public void defaultOnMeasure(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = goi.f18490c;
        setMeasuredDimension(b.eh(i, paddingRight, getMinimumWidth()), b.eh(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void dispatchChildAttached(View view) {
        int size;
        p childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        m mVar = this.mAdapter;
        if (mVar != null && childViewHolderInt != null) {
            mVar.onViewAttachedToWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners == null || r2.size() - 1 < 0) {
            return;
        }
        this.mOnChildAttachStateListeners.get(size).getClass();
        throw new ClassCastException();
    }

    public void dispatchChildDetached(View view) {
        int size;
        p childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        m mVar = this.mAdapter;
        if (mVar != null && childViewHolderInt != null) {
            mVar.onViewDetachedFromWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners == null || r2.size() - 1 < 0) {
            return;
        }
        this.mOnChildAttachStateListeners.get(size).getClass();
        throw new ClassCastException();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        b layoutManager = getLayoutManager();
        int i = 0;
        if (layoutManager != null) {
            if (layoutManager.cd()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        smoothScrollBy(0, measuredHeight, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(0, -measuredHeight, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean bx = layoutManager.bx();
                    if (keyCode == 122) {
                        if (bx) {
                            i = getAdapter().getItemCount();
                        }
                    } else if (!bx) {
                        i = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(i);
                    return true;
                }
            } else if (layoutManager.ca()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        smoothScrollBy(measuredWidth, 0, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(-measuredWidth, 0, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean bx2 = layoutManager.bx();
                    if (keyCode2 == 122) {
                        if (bx2) {
                            i = getAdapter().getItemCount();
                        }
                    } else if (!bx2) {
                        i = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(i);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x0378, code lost:
    
        if (r17.mChildHelper.f307e.contains(getFocusedChild()) == false) goto L207;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dispatchLayout() {
        View findViewById;
        boolean ae;
        if (this.mAdapter == null) {
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        this.mState.j = false;
        boolean z = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f10684d == 1) {
            i();
            this.mLayout.fg(this);
            k();
        } else {
            h hVar = this.mAdapterHelper;
            if ((hVar.f285f.isEmpty() || hVar.f284e.isEmpty()) && !z && this.mLayout.f0do == getWidth() && this.mLayout.dn == getHeight()) {
                this.mLayout.fg(this);
            } else {
                this.mLayout.fg(this);
                k();
            }
        }
        this.mState.o(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        aqz aqzVar = this.mState;
        aqzVar.f10684d = 1;
        View view = null;
        if (aqzVar.l) {
            for (int h = this.mChildHelper.h() - 1; h >= 0; h--) {
                p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(h));
                if (!childViewHolderInt.w()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    geq geqVar = new geq();
                    geqVar.c(childViewHolderInt);
                    p pVar = (p) this.mViewInfoStore.f11869b.i(changedHolderKey);
                    if (pVar == null || pVar.w()) {
                        this.mViewInfoStore.d(childViewHolderInt, geqVar);
                    } else {
                        kr krVar = (kr) this.mViewInfoStore.f11868a.get(pVar);
                        boolean z2 = (krVar == null || (krVar.f19562b & 1) == 0) ? false : true;
                        kr krVar2 = (kr) this.mViewInfoStore.f11868a.get(childViewHolderInt);
                        boolean z3 = (krVar2 == null || (krVar2.f19562b & 1) == 0) ? false : true;
                        if (z2 && pVar == childViewHolderInt) {
                            this.mViewInfoStore.d(childViewHolderInt, geqVar);
                        } else {
                            geq e2 = this.mViewInfoStore.e(pVar, 4);
                            this.mViewInfoStore.d(childViewHolderInt, geqVar);
                            geq e3 = this.mViewInfoStore.e(childViewHolderInt, 8);
                            if (e2 == null) {
                                int h2 = this.mChildHelper.h();
                                for (int i = 0; i < h2; i++) {
                                    p childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.g(i));
                                    if (childViewHolderInt2 != childViewHolderInt && getChangedHolderKey(childViewHolderInt2) == changedHolderKey) {
                                        m mVar = this.mAdapter;
                                        if (mVar == null || !mVar.hasStableIds()) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(childViewHolderInt2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(childViewHolderInt);
                                            throw new IllegalStateException(awf.u(this, sb));
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(childViewHolderInt2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(childViewHolderInt);
                                        throw new IllegalStateException(awf.u(this, sb2));
                                    }
                                }
                                Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + pVar + " cannot be found but it is necessary for " + childViewHolderInt + exceptionLabel());
                            } else {
                                pVar.x(false);
                                if (z2) {
                                    p(pVar);
                                }
                                if (pVar != childViewHolderInt) {
                                    if (z3) {
                                        p(childViewHolderInt);
                                    }
                                    pVar.f309b = childViewHolderInt;
                                    p(pVar);
                                    this.mRecycler.m(pVar);
                                    childViewHolderInt.x(false);
                                    childViewHolderInt.o = pVar;
                                }
                                if (this.mItemAnimator.j(pVar, childViewHolderInt, e2, e3)) {
                                    postAnimationRunner();
                                }
                            }
                        }
                    }
                }
            }
            bng bngVar = this.mViewInfoStore;
            akn aknVar = this.mViewInfoProcessCallback;
            bcp bcpVar = bngVar.f11868a;
            for (int i2 = bcpVar.f11294g - 1; i2 >= 0; i2--) {
                p pVar2 = (p) bcpVar.n(i2);
                kr krVar3 = (kr) bcpVar.r(i2);
                int i3 = krVar3.f19562b;
                if ((i3 & 3) == 3) {
                    RecyclerView recyclerView = (RecyclerView) ((dcq) aknVar).f13976f;
                    recyclerView.mLayout.fi(pVar2.n, recyclerView.mRecycler);
                } else if ((i3 & 1) != 0) {
                    geq geqVar2 = krVar3.f19563c;
                    if (geqVar2 == null) {
                        RecyclerView recyclerView2 = (RecyclerView) ((dcq) aknVar).f13976f;
                        recyclerView2.mLayout.fi(pVar2.n, recyclerView2.mRecycler);
                    } else {
                        geq geqVar3 = krVar3.f19564d;
                        RecyclerView recyclerView3 = (RecyclerView) ((dcq) aknVar).f13976f;
                        recyclerView3.mRecycler.m(pVar2);
                        recyclerView3.animateDisappearance(pVar2, geqVar2, geqVar3);
                    }
                } else if ((i3 & 14) == 14) {
                    ((RecyclerView) ((dcq) aknVar).f13976f).animateAppearance(pVar2, krVar3.f19563c, krVar3.f19564d);
                } else {
                    if ((i3 & 12) == 12) {
                        geq geqVar4 = krVar3.f19563c;
                        geq geqVar5 = krVar3.f19564d;
                        dcq dcqVar = (dcq) aknVar;
                        dcqVar.getClass();
                        pVar2.x(false);
                        RecyclerView recyclerView4 = (RecyclerView) dcqVar.f13976f;
                        if (!recyclerView4.mDataSetHasChangedAfterLayout) {
                            guh guhVar = (guh) recyclerView4.mItemAnimator;
                            guhVar.getClass();
                            int i4 = geqVar4.f17998a;
                            int i5 = geqVar5.f17998a;
                            if (i4 == i5 && geqVar4.f17999b == geqVar5.f17999b) {
                                guhVar.l(pVar2);
                                ae = false;
                                if (!ae) {
                                    recyclerView4.postAnimationRunner();
                                }
                            }
                            ae = guhVar.ae(pVar2, i4, geqVar4.f17999b, i5, geqVar5.f17999b);
                            if (!ae) {
                            }
                        } else if (recyclerView4.mItemAnimator.j(pVar2, pVar2, geqVar4, geqVar5)) {
                            recyclerView4.postAnimationRunner();
                        }
                    } else if ((i3 & 4) != 0) {
                        geq geqVar6 = krVar3.f19563c;
                        RecyclerView recyclerView5 = (RecyclerView) ((dcq) aknVar).f13976f;
                        recyclerView5.mRecycler.m(pVar2);
                        recyclerView5.animateDisappearance(pVar2, geqVar6, null);
                    } else if ((i3 & 8) != 0) {
                        ((RecyclerView) ((dcq) aknVar).f13976f).animateAppearance(pVar2, krVar3.f19563c, krVar3.f19564d);
                    }
                    krVar3.f19562b = 0;
                    krVar3.f19563c = null;
                    krVar3.f19564d = null;
                    kr.f19561a.c(krVar3);
                }
                krVar3.f19562b = 0;
                krVar3.f19563c = null;
                krVar3.f19564d = null;
                kr.f19561a.c(krVar3);
            }
        }
        this.mLayout.ev(this.mRecycler);
        aqz aqzVar2 = this.mState;
        aqzVar2.k = aqzVar2.f10686f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        aqzVar2.l = false;
        aqzVar2.f10682b = false;
        this.mLayout.dt = false;
        ArrayList arrayList = this.mRecycler.f278f;
        if (arrayList != null) {
            arrayList.clear();
        }
        b bVar = this.mLayout;
        if (bVar.dm) {
            bVar.dx = 0;
            bVar.dm = false;
            this.mRecycler.l();
        }
        this.mLayout.ap(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        bng bngVar2 = this.mViewInfoStore;
        bngVar2.f11868a.clear();
        bngVar2.f11869b.e();
        int[] iArr = this.mMinMaxLayoutPositions;
        int i6 = iArr[0];
        int i7 = iArr[1];
        s(iArr);
        int[] iArr2 = this.mMinMaxLayoutPositions;
        if ((iArr2[0] == i6 && iArr2[1] == i7) ? false : true) {
            dispatchOnScrolled(0, 0);
        }
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (!isFocused()) {
            }
            p findViewHolderForItemId = (this.mState.i == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.i);
            if (findViewHolderForItemId != null) {
                View view2 = findViewHolderForItemId.n;
                if (!this.mChildHelper.f307e.contains(view2) && view2.hasFocusable()) {
                    view = view2;
                    if (view != null) {
                        int i8 = this.mState.f10683c;
                        if (i8 != -1 && (findViewById = view.findViewById(i8)) != null && findViewById.isFocusable()) {
                            view = findViewById;
                        }
                        view.requestFocus();
                    }
                }
            }
            if (this.mChildHelper.h() > 0) {
                aqz aqzVar3 = this.mState;
                int i9 = aqzVar3.f10685e;
                int i10 = i9 != -1 ? i9 : 0;
                int p = aqzVar3.p();
                for (int i11 = i10; i11 < p; i11++) {
                    p findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i11);
                    if (findViewHolderForAdapterPosition == null) {
                        break;
                    }
                    View view3 = findViewHolderForAdapterPosition.n;
                    if (view3.hasFocusable()) {
                        view = view3;
                        break;
                    }
                }
                int min = Math.min(p, i10) - 1;
                while (true) {
                    if (min < 0) {
                        break;
                    }
                    p findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(min);
                    if (findViewHolderForAdapterPosition2 == null) {
                        break;
                    }
                    View view4 = findViewHolderForAdapterPosition2.n;
                    if (view4.hasFocusable()) {
                        view = view4;
                        break;
                    }
                    min--;
                }
            }
            if (view != null) {
            }
        }
        aqz aqzVar4 = this.mState;
        aqzVar4.i = -1L;
        aqzVar4.f10685e = -1;
        aqzVar4.f10683c = -1;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().i(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().k(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().l(i, i2, iArr, iArr2, 0);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().l(i, i2, iArr, iArr2, i3);
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().g(i, i2, i3, i4, iArr, 0, null);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().g(i, i2, i3, i4, iArr, i5, null);
    }

    public void dispatchOnScrollStateChanged(int i) {
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.ei(i);
        }
        onScrollStateChanged(i);
        doi doiVar = this.mScrollListener;
        if (doiVar != null) {
            doiVar.onScrollStateChanged(this, i);
        }
        List<doi> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i);
            }
        }
    }

    public void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        doi doiVar = this.mScrollListener;
        if (doiVar != null) {
            doiVar.onScrolled(this, i, i2);
        }
        List<doi> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            p pVar = this.mPendingAccessibilityImportanceChange.get(size);
            if (pVar.n.getParent() == this && !pVar.w() && (i = pVar.r) != -1) {
                pVar.n.setImportantForAccessibility(i);
                pVar.r = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).ak(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.k()) ? z : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0208, code lost:
    
        if (r1 < r13) goto L134;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        float f2;
        float f3;
        boolean z;
        boolean z2;
        int minFlingVelocity;
        boolean z3;
        boolean z4;
        int ed;
        PointF cf;
        int i7;
        boolean z5;
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (!this.mLayoutSuppressed) {
            boolean ca = bVar.ca();
            boolean cd = this.mLayout.cd();
            int i8 = (!ca || Math.abs(i) < i3) ? 0 : i;
            int i9 = (!cd || Math.abs(i2) < i3) ? 0 : i2;
            if (i8 != 0 || i9 != 0) {
                if (i8 != 0) {
                    EdgeEffect edgeEffect = this.mLeftGlow;
                    if (edgeEffect == null || eg.w(edgeEffect) == 0.0f) {
                        EdgeEffect edgeEffect2 = this.mRightGlow;
                        if (edgeEffect2 != null && eg.w(edgeEffect2) != 0.0f) {
                            if (r(this.mRightGlow, i8, getWidth())) {
                                this.mRightGlow.onAbsorb(i8);
                                i8 = 0;
                            }
                            i5 = i8;
                            i8 = 0;
                        }
                    } else {
                        int i10 = -i8;
                        if (r(this.mLeftGlow, i10, getWidth())) {
                            this.mLeftGlow.onAbsorb(i10);
                            i8 = 0;
                        }
                        i5 = i8;
                        i8 = 0;
                    }
                    if (i9 != 0) {
                        EdgeEffect edgeEffect3 = this.mTopGlow;
                        if (edgeEffect3 == null || eg.w(edgeEffect3) == 0.0f) {
                            EdgeEffect edgeEffect4 = this.mBottomGlow;
                            if (edgeEffect4 != null && eg.w(edgeEffect4) != 0.0f) {
                                if (r(this.mBottomGlow, i9, getHeight())) {
                                    this.mBottomGlow.onAbsorb(i9);
                                    i9 = 0;
                                }
                                i6 = 0;
                            }
                        } else {
                            int i11 = -i9;
                            if (r(this.mTopGlow, i11, getHeight())) {
                                this.mTopGlow.onAbsorb(i11);
                                i9 = 0;
                            }
                            i6 = 0;
                        }
                        if (i5 == 0 || i9 != 0) {
                            int i12 = -i4;
                            i5 = Math.max(i12, Math.min(i5, i4));
                            i9 = Math.max(i12, Math.min(i9, i4));
                            t(1);
                            this.mViewFlinger.h(i5, i9);
                        }
                        if (i8 == 0 || i6 != 0) {
                            f2 = i8;
                            f3 = i6;
                            if (!dispatchNestedPreFling(f2, f3)) {
                                boolean z6 = ca || cd;
                                dispatchNestedFling(f2, f3, z6);
                                gfe gfeVar = this.mOnFlingListener;
                                if (gfeVar != null) {
                                    bnj bnjVar = (bnj) gfeVar;
                                    b layoutManager = bnjVar.f11874b.getLayoutManager();
                                    if (layoutManager != 0 && bnjVar.f11874b.getAdapter() != null && ((Math.abs(i6) > (minFlingVelocity = bnjVar.f11874b.getMinFlingVelocity()) || Math.abs(i8) > minFlingVelocity) && ((z3 = layoutManager instanceof wp)))) {
                                        View view = null;
                                        fak fakVar = !z3 ? null : new fak(bnjVar, bnjVar.f11874b.getContext());
                                        if (fakVar != null) {
                                            int en = layoutManager.en();
                                            if (en != 0) {
                                                bjd h = layoutManager.cd() ? bnjVar.h(layoutManager) : layoutManager.ca() ? bnjVar.g(layoutManager) : null;
                                                if (h != null) {
                                                    int et = layoutManager.et();
                                                    View view2 = null;
                                                    z4 = true;
                                                    int i13 = Integer.MIN_VALUE;
                                                    int i14 = he.UNDEFINED_ITEM_ID;
                                                    int i15 = 0;
                                                    z2 = false;
                                                    while (i15 < et) {
                                                        View eo = layoutManager.eo(i15);
                                                        if (eo == null) {
                                                            z5 = z6;
                                                        } else {
                                                            z5 = z6;
                                                            int e2 = bnj.e(eo, h);
                                                            if (e2 <= 0 && e2 > i13) {
                                                                i13 = e2;
                                                                view2 = eo;
                                                            }
                                                            if (e2 >= 0 && e2 < i14) {
                                                                i14 = e2;
                                                                view = eo;
                                                            }
                                                        }
                                                        i15++;
                                                        z6 = z5;
                                                    }
                                                    z = z6;
                                                    boolean z7 = !layoutManager.ca() ? i6 <= 0 : i8 <= 0;
                                                    if (z7 && view != null) {
                                                        ed = b.ed(view);
                                                    } else if (z7 || view2 == null) {
                                                        if (z7) {
                                                            view = view2;
                                                        }
                                                        if (view != null) {
                                                            ed = ((z3 && (cf = ((wp) layoutManager).cf(layoutManager.en() + (-1))) != null && ((cf.x > 0.0f ? 1 : (cf.x == 0.0f ? 0 : -1)) < 0 || (cf.y > 0.0f ? 1 : (cf.y == 0.0f ? 0 : -1)) < 0)) == z7 ? -1 : 1) + b.ed(view);
                                                            if (ed >= 0) {
                                                            }
                                                        }
                                                        ed = -1;
                                                    } else {
                                                        ed = b.ed(view2);
                                                    }
                                                    i7 = -1;
                                                    if (ed != i7) {
                                                        fakVar.h = ed;
                                                        layoutManager.ep(fakVar);
                                                        return z4;
                                                    }
                                                    if (!z) {
                                                        return z2;
                                                    }
                                                    t(1);
                                                    int i16 = -i4;
                                                    this.mViewFlinger.h(Math.max(i16, Math.min(i8, i4)), Math.max(i16, Math.min(i6, i4)));
                                                    return true;
                                                }
                                            }
                                            z = z6;
                                            z4 = true;
                                            ed = -1;
                                            i7 = -1;
                                            z2 = false;
                                            if (ed != i7) {
                                            }
                                            if (!z) {
                                            }
                                        }
                                    }
                                }
                                z = z6;
                                z2 = false;
                                if (!z) {
                                }
                            }
                        } else if (i5 != 0 || i9 != 0) {
                            return true;
                        }
                    }
                    i6 = i9;
                    i9 = 0;
                    if (i5 == 0) {
                    }
                    int i122 = -i4;
                    i5 = Math.max(i122, Math.min(i5, i4));
                    i9 = Math.max(i122, Math.min(i9, i4));
                    t(1);
                    this.mViewFlinger.h(i5, i9);
                    if (i8 == 0) {
                    }
                    f2 = i8;
                    f3 = i6;
                    if (!dispatchNestedPreFling(f2, f3)) {
                    }
                }
                i5 = 0;
                if (i9 != 0) {
                }
                i6 = i9;
                i9 = 0;
                if (i5 == 0) {
                }
                int i1222 = -i4;
                i5 = Math.max(i1222, Math.min(i5, i4));
                i9 = Math.max(i1222, Math.min(i9, i4));
                t(1);
                this.mViewFlinger.h(i5, i9);
                if (i8 == 0) {
                }
                f2 = i8;
                f3 = i6;
                if (!dispatchNestedPreFling(f2, f3)) {
                }
            }
        }
        return false;
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        ((dxj) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        ((dxj) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        ((dxj) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        ((dxj) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void f() {
        boolean z;
        boolean z2 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            h hVar = this.mAdapterHelper;
            hVar.h(hVar.f284e);
            hVar.h(hVar.f285f);
            hVar.f283d = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.au();
            }
        }
        if (this.mItemAnimator == null || !this.mLayout.ah()) {
            this.mAdapterHelper.q();
        } else {
            this.mAdapterHelper.p();
        }
        boolean z3 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.l = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z = this.mDataSetHasChangedAfterLayout) || z3 || this.mLayout.dt) && (!z || this.mAdapter.hasStableIds());
        aqz aqzVar = this.mState;
        if (aqzVar.l && z3 && !this.mDataSetHasChangedAfterLayout && this.mItemAnimator != null && this.mLayout.ah()) {
            z2 = true;
        }
        aqzVar.f10682b = z2;
    }

    public final void fillRemainingScrollValues(aqz aqzVar) {
        if (getScrollState() != 2) {
            aqzVar.getClass();
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f296b;
        overScroller.getFinalX();
        overScroller.getCurrX();
        aqzVar.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int h = this.mChildHelper.h() - 1; h >= 0; h--) {
            View g2 = this.mChildHelper.g(h);
            float translationX = g2.getTranslationX();
            float translationY = g2.getTranslationY();
            if (f2 >= g2.getLeft() + translationX && f2 <= g2.getRight() + translationX && f3 >= g2.getTop() + translationY && f3 <= g2.getBottom() + translationY) {
                return g2;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        return null;
    }

    public p findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public p findViewHolderForAdapterPosition(int i) {
        p pVar = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int f2 = this.mChildHelper.f();
        for (int i2 = 0; i2 < f2; i2++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i2));
            if (childViewHolderInt != null && !childViewHolderInt.u() && getAdapterPositionInRecyclerView(childViewHolderInt) == i) {
                n nVar = this.mChildHelper;
                if (!nVar.f307e.contains(childViewHolderInt.n)) {
                    return childViewHolderInt;
                }
                pVar = childViewHolderInt;
            }
        }
        return pVar;
    }

    public p findViewHolderForItemId(long j) {
        m mVar = this.mAdapter;
        p pVar = null;
        if (mVar != null && mVar.hasStableIds()) {
            int f2 = this.mChildHelper.f();
            for (int i = 0; i < f2; i++) {
                p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i));
                if (childViewHolderInt != null && !childViewHolderInt.u() && childViewHolderInt.l == j) {
                    n nVar = this.mChildHelper;
                    if (!nVar.f307e.contains(childViewHolderInt.n)) {
                        return childViewHolderInt;
                    }
                    pVar = childViewHolderInt;
                }
            }
        }
        return pVar;
    }

    public p findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public p findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public p findViewHolderForPosition(int i, boolean z) {
        n nVar;
        int f2 = this.mChildHelper.f();
        p pVar = null;
        for (int i2 = 0; i2 < f2; i2++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i2));
            if (childViewHolderInt != null && !childViewHolderInt.u()) {
                if (z) {
                    if (childViewHolderInt.f314g != i) {
                        continue;
                    }
                    nVar = this.mChildHelper;
                    if (nVar.f307e.contains(childViewHolderInt.n)) {
                        return childViewHolderInt;
                    }
                    pVar = childViewHolderInt;
                } else {
                    if (childViewHolderInt.ag() != i) {
                        continue;
                    }
                    nVar = this.mChildHelper;
                    if (nVar.f307e.contains(childViewHolderInt.n)) {
                    }
                }
            }
        }
        return pVar;
    }

    public boolean fling(int i, int i2) {
        return e(i, i2, this.mMinFlingVelocity, this.mMaxFlingVelocity);
    }

    public boolean flingNoThresholdCheck(int i, int i2) {
        return e(i, i2, 0, he.UNDEFINED_ITEM_ID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a0, code lost:
    
        if ((r5 * r6) >= 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0171, code lost:
    
        if (r11 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0188, code lost:
    
        if (r5 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018b, code lost:
    
        if (r11 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x018e, code lost:
    
        if (r5 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0197, code lost:
    
        if ((r5 * r6) <= 0) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View focusSearch(View view, int i) {
        View view2;
        int i2;
        char c2;
        boolean z;
        this.mLayout.getClass();
        boolean z2 = true;
        boolean z3 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i == 2 || i == 1)) {
            if (this.mLayout.cd()) {
                if (focusFinder.findNextFocus(this, view, i == 2 ? 130 : 33) == null) {
                    z = true;
                    if (!z && this.mLayout.ca()) {
                        z = focusFinder.findNextFocus(this, view, !((this.mLayout.dw.getLayoutDirection() != 1) ^ (i != 2)) ? 66 : 17) != null;
                    }
                    if (z) {
                        consumePendingUpdateOperations();
                        if (findContainingItemView(view) == null) {
                            return null;
                        }
                        startInterceptRequestLayout();
                        this.mLayout.aj(view, i, this.mRecycler, this.mState);
                        stopInterceptRequestLayout(false);
                    }
                    view2 = focusFinder.findNextFocus(this, view, i);
                }
            }
            z = false;
            if (!z) {
                if (focusFinder.findNextFocus(this, view, !((this.mLayout.dw.getLayoutDirection() != 1) ^ (i != 2)) ? 66 : 17) != null) {
                }
            }
            if (z) {
            }
            view2 = focusFinder.findNextFocus(this, view, i);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i);
            if (findNextFocus == null && z3) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.aj(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 != null && !view2.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i);
            }
            g(view2, null);
            return view;
        }
        if (view2 != null && view2 != this && view2 != view && findContainingItemView(view2) != null) {
            if (view != null && findContainingItemView(view) != null) {
                this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
                this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
                offsetDescendantRectToMyCoords(view, this.mTempRect);
                offsetDescendantRectToMyCoords(view2, this.mTempRect2);
                int i3 = this.mLayout.dw.getLayoutDirection() == 1 ? -1 : 1;
                Rect rect = this.mTempRect;
                int i4 = rect.left;
                Rect rect2 = this.mTempRect2;
                int i5 = rect2.left;
                if ((i4 < i5 || rect.right <= i5) && rect.right < rect2.right) {
                    i2 = 1;
                } else {
                    int i6 = rect.right;
                    int i7 = rect2.right;
                    i2 = ((i6 > i7 || i4 >= i7) && i4 > i5) ? -1 : 0;
                }
                int i8 = rect.top;
                int i9 = rect2.top;
                if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                    c2 = 1;
                } else {
                    int i10 = rect.bottom;
                    int i11 = rect2.bottom;
                    c2 = ((i10 > i11 || i8 >= i11) && i8 > i9) ? (char) 65535 : (char) 0;
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i != 17) {
                            if (i != 33) {
                                if (i != 66) {
                                    if (i != 130) {
                                        StringBuilder sb = new StringBuilder("Invalid direction: ");
                                        sb.append(i);
                                        throw new IllegalArgumentException(awf.u(this, sb));
                                    }
                                }
                            }
                        }
                    } else if (c2 <= 0) {
                        if (c2 == 0) {
                        }
                    }
                } else if (c2 >= 0) {
                    if (c2 == 0) {
                    }
                }
            }
            return !z2 ? view2 : super.focusSearch(view, i);
        }
        z2 = false;
        if (!z2) {
        }
    }

    public final void g(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof yx) {
            yx yxVar = (yx) layoutParams;
            if (!yxVar.f20373d) {
                Rect rect = yxVar.f20372c;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.fa(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        b bVar = this.mLayout;
        if (bVar != null) {
            return bVar.az();
        }
        throw new IllegalStateException(awf.u(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        b bVar = this.mLayout;
        if (bVar != null) {
            return bVar.ae(getContext(), attributeSet);
        }
        throw new IllegalStateException(awf.u(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        b bVar = this.mLayout;
        if (bVar != null) {
            return bVar.ao(layoutParams);
        }
        throw new IllegalStateException(awf.u(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public m getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(p pVar) {
        if ((pVar.f313f & 524) == 0 && pVar.aa()) {
            h hVar = this.mAdapterHelper;
            int i = pVar.f314g;
            ArrayList arrayList = hVar.f284e;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                rx rxVar = (rx) arrayList.get(i2);
                int i3 = rxVar.f19935b;
                if (i3 != 1) {
                    if (i3 == 2) {
                        int i4 = rxVar.f19936c;
                        if (i4 <= i) {
                            int i5 = rxVar.f19934a;
                            if (i4 + i5 <= i) {
                                i -= i5;
                            }
                        } else {
                            continue;
                        }
                    } else if (i3 == 8) {
                        int i6 = rxVar.f19936c;
                        if (i6 == i) {
                            i = rxVar.f19934a;
                        } else {
                            if (i6 < i) {
                                i--;
                            }
                            if (rxVar.f19934a <= i) {
                                i++;
                            }
                        }
                    }
                } else if (rxVar.f19936c <= i) {
                    i += rxVar.f19934a;
                }
            }
            return i;
        }
        return -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        b bVar = this.mLayout;
        if (bVar == null) {
            return super.getBaseline();
        }
        bVar.getClass();
        return -1;
    }

    public long getChangedHolderKey(p pVar) {
        return this.mAdapter.hasStableIds() ? pVar.l : pVar.f314g;
    }

    public int getChildAdapterPosition(View view) {
        RecyclerView recyclerView;
        p childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt == null || (recyclerView = childViewHolderInt.m) == null) {
            return -1;
        }
        return recyclerView.getAdapterPositionInRecyclerView(childViewHolderInt);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    public long getChildItemId(View view) {
        p childViewHolderInt;
        m mVar = this.mAdapter;
        if (mVar == null || !mVar.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.l;
    }

    public int getChildLayoutPosition(View view) {
        p childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.ag();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public p getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public j getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public cyd getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public dgn getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        yx yxVar = (yx) view.getLayoutParams();
        boolean z = yxVar.f20373d;
        Rect rect = yxVar.f20372c;
        if (!z || (this.mState.n && (yxVar.f20371b.v() || yxVar.f20371b.ac()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i).g(this.mTempRect, view, this, this.mState);
            int i2 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        yxVar.f20373d = false;
        return rect;
    }

    public fji getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            return this.mItemDecorations.get(i);
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public b getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public gfe getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public dvv getRecycledViewPool() {
        return this.mRecycler.v();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public final int h(int i, float f2) {
        float width = f2 / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f3 = 0.0f;
        if (edgeEffect == null || eg.w(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && eg.w(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.mBottomGlow.onRelease();
                } else {
                    float h = eg.h(this.mBottomGlow, height, 1.0f - width);
                    if (eg.w(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f3 = h;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.mTopGlow.onRelease();
            } else {
                float f4 = -eg.h(this.mTopGlow, -height, width);
                if (eg.w(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getHeight());
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().j(0);
    }

    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().j(i);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.r();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0081 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i() {
        int adapterPositionInRecyclerView;
        View view;
        kr krVar;
        this.mState.o(1);
        fillRemainingScrollValues(this.mState);
        this.mState.j = false;
        startInterceptRequestLayout();
        bng bngVar = this.mViewInfoStore;
        bngVar.f11868a.clear();
        bngVar.f11869b.e();
        onEnterLayoutOrScroll();
        f();
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        p findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            aqz aqzVar = this.mState;
            aqzVar.i = -1L;
            aqzVar.f10685e = -1;
            aqzVar.f10683c = -1;
        } else {
            this.mState.i = this.mAdapter.hasStableIds() ? findContainingViewHolder.l : -1L;
            aqz aqzVar2 = this.mState;
            if (!this.mDataSetHasChangedAfterLayout) {
                if (findContainingViewHolder.u()) {
                    adapterPositionInRecyclerView = findContainingViewHolder.k;
                } else {
                    RecyclerView recyclerView = findContainingViewHolder.m;
                    if (recyclerView != null) {
                        adapterPositionInRecyclerView = recyclerView.getAdapterPositionInRecyclerView(findContainingViewHolder);
                    }
                }
                aqzVar2.f10685e = adapterPositionInRecyclerView;
                aqz aqzVar3 = this.mState;
                view = findContainingViewHolder.n;
                int id = view.getId();
                while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                    view = ((ViewGroup) view).getFocusedChild();
                    if (view.getId() == -1) {
                        id = view.getId();
                    }
                }
                aqzVar3.f10683c = id;
            }
            adapterPositionInRecyclerView = -1;
            aqzVar2.f10685e = adapterPositionInRecyclerView;
            aqz aqzVar32 = this.mState;
            view = findContainingViewHolder.n;
            int id2 = view.getId();
            while (!view.isFocused()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() == -1) {
                }
            }
            aqzVar32.f10683c = id2;
        }
        aqz aqzVar4 = this.mState;
        aqzVar4.f10681a = aqzVar4.l && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        aqzVar4.n = aqzVar4.f10682b;
        aqzVar4.f10686f = this.mAdapter.getItemCount();
        s(this.mMinMaxLayoutPositions);
        if (this.mState.l) {
            int h = this.mChildHelper.h();
            for (int i = 0; i < h; i++) {
                p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i));
                if (!childViewHolderInt.w() && (!childViewHolderInt.ac() || this.mAdapter.hasStableIds())) {
                    dgn dgnVar = this.mItemAnimator;
                    dgn.g(childViewHolderInt);
                    childViewHolderInt.ai();
                    dgnVar.getClass();
                    geq geqVar = new geq();
                    geqVar.c(childViewHolderInt);
                    bcp bcpVar = this.mViewInfoStore.f11868a;
                    kr krVar2 = (kr) bcpVar.get(childViewHolderInt);
                    if (krVar2 == null) {
                        krVar2 = kr.e();
                        bcpVar.put(childViewHolderInt, krVar2);
                    }
                    krVar2.f19563c = geqVar;
                    krVar2.f19562b |= 4;
                    if (this.mState.f10681a && childViewHolderInt.v() && !childViewHolderInt.u() && !childViewHolderInt.w() && !childViewHolderInt.ac()) {
                        this.mViewInfoStore.f11869b.l(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f10682b) {
            saveOldPositions();
            aqz aqzVar5 = this.mState;
            boolean z = aqzVar5.h;
            aqzVar5.h = false;
            this.mLayout.r(this.mRecycler, aqzVar5);
            this.mState.h = z;
            for (int i2 = 0; i2 < this.mChildHelper.h(); i2++) {
                p childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.g(i2));
                if (!childViewHolderInt2.w() && ((krVar = (kr) this.mViewInfoStore.f11868a.get(childViewHolderInt2)) == null || (krVar.f19562b & 4) == 0)) {
                    dgn.g(childViewHolderInt2);
                    boolean z2 = (childViewHolderInt2.f313f & 8192) != 0;
                    dgn dgnVar2 = this.mItemAnimator;
                    childViewHolderInt2.ai();
                    dgnVar2.getClass();
                    geq geqVar2 = new geq();
                    geqVar2.c(childViewHolderInt2);
                    if (z2) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, geqVar2);
                    } else {
                        bcp bcpVar2 = this.mViewInfoStore.f11868a;
                        kr krVar3 = (kr) bcpVar2.get(childViewHolderInt2);
                        if (krVar3 == null) {
                            krVar3 = kr.e();
                            bcpVar2.put(childViewHolderInt2, krVar3);
                        }
                        krVar3.f19562b |= 2;
                        krVar3.f19563c = geqVar2;
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f10684d = 2;
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new h(new androidx.recyclerview.widget.a(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(awf.u(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new eiu(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.de("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        dgn dgnVar = this.mItemAnimator;
        return dgnVar != null && dgnVar.k();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f14245a;
    }

    public final void j() {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.mLeftGlow.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    public void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.dh(i);
        awakenScrollBars();
    }

    public final void k() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.o(6);
        this.mAdapterHelper.q();
        this.mState.f10686f = this.mAdapter.getItemCount();
        this.mState.m = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.mLayoutState;
            if (parcelable != null) {
                this.mLayout.dg(parcelable);
            }
            this.mPendingSavedState = null;
        }
        aqz aqzVar = this.mState;
        aqzVar.n = false;
        this.mLayout.r(this.mRecycler, aqzVar);
        aqz aqzVar2 = this.mState;
        aqzVar2.h = false;
        aqzVar2.l = aqzVar2.l && this.mItemAnimator != null;
        aqzVar2.f10684d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            ewo ewoVar = this.mOnItemTouchListeners.get(i);
            eiu eiuVar = (eiu) ewoVar;
            int i2 = eiuVar.q;
            if (i2 == 1) {
                boolean aj = eiuVar.aj(motionEvent.getX(), motionEvent.getY());
                boolean ai = eiuVar.ai(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (aj || ai)) {
                    if (ai) {
                        eiuVar.r = 1;
                        eiuVar.u = (int) motionEvent.getX();
                    } else if (aj) {
                        eiuVar.r = 2;
                        eiuVar.v = (int) motionEvent.getY();
                    }
                    eiuVar.al(2);
                    if (action == 3) {
                        this.mInterceptingOnItemTouchListener = ewoVar;
                        return true;
                    }
                }
            } else {
                if (i2 != 2) {
                    continue;
                }
                if (action == 3) {
                }
            }
        }
        return false;
    }

    public final void m(m mVar, boolean z, boolean z2) {
        m mVar2 = this.mAdapter;
        if (mVar2 != null) {
            mVar2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        h hVar = this.mAdapterHelper;
        hVar.h(hVar.f284e);
        hVar.h(hVar.f285f);
        hVar.f283d = 0;
        m mVar3 = this.mAdapter;
        this.mAdapter = mVar;
        if (mVar != null) {
            mVar.registerAdapterDataObserver(this.mObserver);
            mVar.onAttachedToRecyclerView(this);
        }
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.el();
        }
        f fVar = this.mRecycler;
        m mVar4 = this.mAdapter;
        fVar.f276d.clear();
        fVar.j();
        fVar.w(mVar3, true);
        dvv v = fVar.v();
        if (mVar3 != null) {
            v.f14906b--;
        }
        if (!z && v.f14906b == 0) {
            SparseArray sparseArray = v.f14905a;
            for (int i = 0; i < sparseArray.size(); i++) {
                atv atvVar = (atv) sparseArray.valueAt(i);
                Iterator it = atvVar.f10832b.iterator();
                while (it.hasNext()) {
                    egh.y(((p) it.next()).n);
                }
                atvVar.f10832b.clear();
            }
        }
        if (mVar4 != null) {
            v.f14906b++;
        } else {
            v.getClass();
        }
        fVar.q();
        this.mState.h = true;
    }

    public void markItemDecorInsetsDirty() {
        int f2 = this.mChildHelper.f();
        for (int i = 0; i < f2; i++) {
            ((yx) this.mChildHelper.o(i).getLayoutParams()).f20373d = true;
        }
        ArrayList arrayList = this.mRecycler.f279g;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            yx yxVar = (yx) ((p) arrayList.get(i2)).n.getLayoutParams();
            if (yxVar != null) {
                yxVar.f20373d = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int f2 = this.mChildHelper.f();
        for (int i = 0; i < f2; i++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i));
            if (childViewHolderInt != null && !childViewHolderInt.w()) {
                childViewHolderInt.ab(6);
            }
        }
        markItemDecorInsetsDirty();
        f fVar = this.mRecycler;
        ArrayList arrayList = fVar.f279g;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            p pVar = (p) arrayList.get(i2);
            if (pVar != null) {
                pVar.ab(6);
                pVar.ab(1024);
            }
        }
        m mVar = fVar.f273a.mAdapter;
        if (mVar == null || !mVar.hasStableIds()) {
            fVar.j();
        }
    }

    public final int n(int i, float f2) {
        float height = f2 / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f3 = 0.0f;
        if (edgeEffect == null || eg.w(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && eg.w(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.mRightGlow.onRelease();
                } else {
                    float h = eg.h(this.mRightGlow, width, height);
                    if (eg.w(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f3 = h;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.mLeftGlow.onRelease();
            } else {
                float f4 = -eg.h(this.mLeftGlow, -width, 1.0f - height);
                if (eg.w(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getWidth());
    }

    public void nestedScrollBy(int i, int i2) {
        o(i, i2, null);
    }

    public final void o(int i, int i2, MotionEvent motionEvent) {
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean ca = bVar.ca();
        boolean cd = this.mLayout.cd();
        int i3 = cd ? (ca ? 1 : 0) | 2 : ca ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int n = i - n(i, height);
        int h = i2 - h(i2, width);
        startNestedScroll(i3, 1);
        if (dispatchNestedPreScroll(ca ? n : 0, cd ? h : 0, this.mReusableIntPair, this.mScrollOffset, 1)) {
            int[] iArr2 = this.mReusableIntPair;
            n -= iArr2[0];
            h -= iArr2[1];
        }
        scrollByInternal(ca ? n : 0, cd ? h : 0, motionEvent, 1);
        e eVar = this.mGapWorker;
        if (eVar != null && (n != 0 || h != 0)) {
            eVar.h(this, n, h);
        }
        stopNestedScroll(1);
    }

    public void offsetChildrenHorizontal(int i) {
        int h = this.mChildHelper.h();
        for (int i2 = 0; i2 < h; i2++) {
            this.mChildHelper.g(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int h = this.mChildHelper.h();
        for (int i2 = 0; i2 < h; i2++) {
            this.mChildHelper.g(i2).offsetTopAndBottom(i);
        }
    }

    public void offsetPositionRecordsForInsert(int i, int i2) {
        int f2 = this.mChildHelper.f();
        for (int i3 = 0; i3 < f2; i3++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i3));
            if (childViewHolderInt != null && !childViewHolderInt.w() && childViewHolderInt.f314g >= i) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                childViewHolderInt.z(i2, false);
                this.mState.h = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f279g;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            p pVar = (p) arrayList.get(i4);
            if (pVar != null && pVar.f314g >= i) {
                if (sVerboseLoggingEnabled) {
                    pVar.toString();
                }
                pVar.z(i2, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int f2 = this.mChildHelper.f();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < f2; i11++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i11));
            if (childViewHolderInt != null && (i9 = childViewHolderInt.f314g) >= i4 && i9 <= i3) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                if (childViewHolderInt.f314g == i) {
                    childViewHolderInt.z(i2 - i, false);
                } else {
                    childViewHolderInt.z(i5, false);
                }
                this.mState.h = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f279g;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            p pVar = (p) arrayList.get(i12);
            if (pVar != null && (i8 = pVar.f314g) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    pVar.z(i2 - i, false);
                } else {
                    pVar.z(i10, false);
                }
                if (sVerboseLoggingEnabled) {
                    pVar.toString();
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        int f2 = this.mChildHelper.f();
        for (int i4 = 0; i4 < f2; i4++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i4));
            if (childViewHolderInt != null && !childViewHolderInt.w()) {
                int i5 = childViewHolderInt.f314g;
                if (i5 >= i3) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.z(-i2, z);
                    this.mState.h = true;
                } else if (i5 >= i) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.ab(8);
                    childViewHolderInt.z(-i2, z);
                    childViewHolderInt.f314g = i - 1;
                    this.mState.h = true;
                }
            }
        }
        f fVar = this.mRecycler;
        ArrayList arrayList = fVar.f279g;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            p pVar = (p) arrayList.get(size);
            if (pVar != null) {
                int i6 = pVar.f314g;
                if (i6 >= i3) {
                    if (sVerboseLoggingEnabled) {
                        pVar.toString();
                    }
                    pVar.z(-i2, z);
                } else if (i6 >= i) {
                    pVar.ab(8);
                    fVar.s(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onAttachedToWindow() {
        float f2;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.q();
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.dz = true;
            bVar.ey(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal threadLocal = e.f267a;
            e eVar = (e) threadLocal.get();
            this.mGapWorker = eVar;
            if (eVar == null) {
                this.mGapWorker = new e();
                WeakHashMap weakHashMap = goi.f18490c;
                Display display = getDisplay();
                if (!isInEditMode() && display != null) {
                    f2 = display.getRefreshRate();
                }
                f2 = 60.0f;
                e eVar2 = this.mGapWorker;
                eVar2.f269c = (long) (1.0E9f / f2);
                threadLocal.set(eVar2);
            }
            ArrayList arrayList = this.mGapWorker.f271e;
            if (sDebugAssertionsEnabled && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        e eVar;
        super.onDetachedFromWindow();
        dgn dgnVar = this.mItemAnimator;
        if (dgnVar != null) {
            dgnVar.i();
        }
        stopScroll();
        int i = 0;
        this.mIsAttached = false;
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.dz = false;
            bVar.dc(this);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (kr.f19561a.b() != null) {
        }
        f fVar = this.mRecycler;
        ArrayList arrayList = fVar.f279g;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            egh.y(((p) arrayList.get(i2)).n);
        }
        fVar.w(fVar.f273a.mAdapter, false);
        while (i < getChildCount()) {
            int i3 = i + 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            fkf fkfVar = (fkf) childAt.getTag(cn.trinea.android.developertools.R.id.pooling_container_listener_holder_tag);
            if (fkfVar == null) {
                fkfVar = new fkf();
                childAt.setTag(cn.trinea.android.developertools.R.id.pooling_container_listener_holder_tag, fkfVar);
            }
            ArrayList arrayList2 = fkfVar.f16917a;
            int bd = grj.bd(arrayList2);
            if (-1 < bd) {
                throw tn.w(bd, arrayList2);
            }
            i = i3;
        }
        if (!ALLOW_THREAD_GAP_WORK || (eVar = this.mGapWorker) == null) {
            return;
        }
        boolean remove = eVar.f271e.remove(this);
        if (sDebugAssertionsEnabled && !remove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).a(canvas, this);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    public void onExitLayoutOrScroll(boolean z) {
        int i = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i;
        if (i < 1) {
            if (sDebugAssertionsEnabled && i < 0) {
                throw new IllegalStateException(awf.u(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                int i2 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i2 != 0 && isAccessibilityEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i2);
                    sendAccessibilityEventUnchecked(obtain);
                }
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0068, code lost:
    
        if (r13.mLayout.ca() != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        float axisValue;
        boolean z;
        RecyclerView recyclerView;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            float f2 = 0.0f;
            if ((motionEvent.getSource() & 2) != 0) {
                float f3 = this.mLayout.cd() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.mLayout.ca()) {
                    axisValue = motionEvent.getAxisValue(10);
                    z = false;
                    f2 = f3;
                    i = 0;
                    int i2 = (int) (f2 * this.mScaledVerticalScrollFactor);
                    int i3 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
                    if (z) {
                        recyclerView = this;
                        o(i3, i2, motionEvent);
                    } else {
                        OverScroller overScroller = this.mViewFlinger.f296b;
                        recyclerView = this;
                        recyclerView.smoothScrollBy((overScroller.getFinalX() - overScroller.getCurrX()) + i3, (overScroller.getFinalY() - overScroller.getCurrY()) + i2, null, Integer.MIN_VALUE, true);
                    }
                    if (i != 0 && !z) {
                        recyclerView.mDifferentialMotionFlingController.i(motionEvent, i);
                    }
                } else {
                    f2 = f3;
                    i = 0;
                    axisValue = 0.0f;
                    z = false;
                    int i22 = (int) (f2 * this.mScaledVerticalScrollFactor);
                    int i32 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
                    if (z) {
                    }
                    if (i != 0) {
                        recyclerView.mDifferentialMotionFlingController.i(motionEvent, i);
                    }
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    i = 26;
                    axisValue = motionEvent.getAxisValue(26);
                    if (this.mLayout.cd()) {
                        f2 = -axisValue;
                    }
                    axisValue = 0.0f;
                    z = this.mLowResRotaryEncoderFeature;
                    int i222 = (int) (f2 * this.mScaledVerticalScrollFactor);
                    int i322 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
                    if (z) {
                    }
                    if (i != 0) {
                    }
                }
                i = 0;
                axisValue = 0.0f;
                z = false;
                int i2222 = (int) (f2 * this.mScaledVerticalScrollFactor);
                int i3222 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
                if (z) {
                }
                if (i != 0) {
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.mLayoutSuppressed) {
            this.mInterceptingOnItemTouchListener = null;
            if (l(motionEvent)) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                stopNestedScroll(0);
                j();
                setScrollState(0);
                return true;
            }
            b bVar = this.mLayout;
            if (bVar != null) {
                boolean ca = bVar.ca();
                boolean cd = this.mLayout.cd();
                if (this.mVelocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                }
                this.mVelocityTracker.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.mIgnoreMotionEventTillDown) {
                        this.mIgnoreMotionEventTillDown = false;
                    }
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = x;
                    this.mInitialTouchX = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = y;
                    this.mInitialTouchY = y;
                    EdgeEffect edgeEffect = this.mLeftGlow;
                    if (edgeEffect == null || eg.w(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z = false;
                    } else {
                        eg.h(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    }
                    EdgeEffect edgeEffect2 = this.mRightGlow;
                    if (edgeEffect2 != null && eg.w(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                        eg.h(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
                        z = true;
                    }
                    EdgeEffect edgeEffect3 = this.mTopGlow;
                    if (edgeEffect3 != null && eg.w(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                        eg.h(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
                        z = true;
                    }
                    EdgeEffect edgeEffect4 = this.mBottomGlow;
                    if (edgeEffect4 != null && eg.w(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                        eg.h(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z = true;
                    }
                    if (z || this.mScrollState == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        stopNestedScroll(1);
                    }
                    int[] iArr = this.mNestedOffsets;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    t(0);
                } else if (actionMasked == 1) {
                    this.mVelocityTracker.clear();
                    stopNestedScroll(0);
                } else if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (findPointerIndex < 0) {
                        Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.mScrollState != 1) {
                        int i = x2 - this.mInitialTouchX;
                        int i2 = y2 - this.mInitialTouchY;
                        if (!ca || Math.abs(i) <= this.mTouchSlop) {
                            z2 = false;
                        } else {
                            this.mLastTouchX = x2;
                            z2 = true;
                        }
                        if (cd && Math.abs(i2) > this.mTouchSlop) {
                            this.mLastTouchY = y2;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    stopNestedScroll(0);
                    j();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.mLastTouchX = x3;
                    this.mInitialTouchX = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.mLastTouchY = y3;
                    this.mInitialTouchY = y3;
                } else if (actionMasked == 6) {
                    q(motionEvent);
                }
                if (this.mScrollState == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        b bVar = this.mLayout;
        if (bVar == null) {
            defaultOnMeasure(i, i2);
            return;
        }
        boolean z = false;
        if (bVar.ch()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.dw.defaultOnMeasure(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z;
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.f10684d == 1) {
                i();
            }
            this.mLayout.es(i, i2);
            this.mState.j = true;
            k();
            this.mLayout.fl(i, i2);
            if (this.mLayout.cn()) {
                this.mLayout.es(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), C.ENCODING_PCM_32BIT));
                this.mState.j = true;
                k();
                this.mLayout.fl(i, i2);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.dw.defaultOnMeasure(i, i2);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            f();
            onExitLayoutOrScroll();
            aqz aqzVar = this.mState;
            if (aqzVar.f10682b) {
                aqzVar.n = true;
            } else {
                this.mAdapterHelper.q();
                this.mState.n = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f10682b) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        m mVar = this.mAdapter;
        if (mVar != null) {
            this.mState.f10686f = mVar.getItemCount();
        } else {
            this.mState.f10686f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.dw.defaultOnMeasure(i, i2);
        stopInterceptRequestLayout(false);
        this.mState.n = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        this.mPendingSavedState = aVar;
        super.onRestoreInstanceState(aVar.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        a aVar2 = this.mPendingSavedState;
        if (aVar2 != null) {
            aVar.copyFrom(aVar2);
            return aVar;
        }
        b bVar = this.mLayout;
        if (bVar != null) {
            aVar.mLayoutState = bVar.cc();
            return aVar;
        }
        aVar.mLayoutState = null;
        return aVar;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(int i, int i2) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0228  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.mLayoutSuppressed && !this.mIgnoreMotionEventTillDown) {
            ewo ewoVar = this.mInterceptingOnItemTouchListener;
            if (ewoVar == null) {
                z = motionEvent.getAction() == 0 ? false : l(motionEvent);
            } else {
                eiu eiuVar = (eiu) ewoVar;
                int i = eiuVar.x;
                if (eiuVar.q != 0) {
                    if (motionEvent.getAction() == 0) {
                        boolean aj = eiuVar.aj(motionEvent.getX(), motionEvent.getY());
                        boolean ai = eiuVar.ai(motionEvent.getX(), motionEvent.getY());
                        if (aj || ai) {
                            if (ai) {
                                eiuVar.r = 1;
                                eiuVar.u = (int) motionEvent.getX();
                            } else if (aj) {
                                eiuVar.r = 2;
                                eiuVar.v = (int) motionEvent.getY();
                            }
                            eiuVar.al(2);
                        }
                    } else if (motionEvent.getAction() == 1 && eiuVar.q == 2) {
                        eiuVar.v = 0.0f;
                        eiuVar.u = 0.0f;
                        eiuVar.al(1);
                        eiuVar.r = 0;
                    } else if (motionEvent.getAction() == 2 && eiuVar.q == 2) {
                        eiuVar.ah();
                        if (eiuVar.r == 1) {
                            float x = motionEvent.getX();
                            int[] iArr = eiuVar.i;
                            iArr[0] = i;
                            int i2 = eiuVar.z - i;
                            iArr[1] = i2;
                            float max = Math.max(i, Math.min(i2, x));
                            if (Math.abs(eiuVar.h - max) >= 2.0f) {
                                int ag = eiu.ag(eiuVar.u, max, iArr, eiuVar.t.computeHorizontalScrollRange(), eiuVar.t.computeHorizontalScrollOffset(), eiuVar.z);
                                if (ag != 0) {
                                    eiuVar.t.scrollBy(ag, 0);
                                }
                                eiuVar.u = max;
                            }
                        }
                        if (eiuVar.r == 2) {
                            float y = motionEvent.getY();
                            int[] iArr2 = eiuVar.ad;
                            iArr2[0] = i;
                            int i3 = eiuVar.af - i;
                            iArr2[1] = i3;
                            float max2 = Math.max(i, Math.min(i3, y));
                            if (Math.abs(eiuVar.m - max2) >= 2.0f) {
                                int ag2 = eiu.ag(eiuVar.v, max2, iArr2, eiuVar.t.computeVerticalScrollRange(), eiuVar.t.computeVerticalScrollOffset(), eiuVar.af);
                                if (ag2 != 0) {
                                    eiuVar.t.scrollBy(0, ag2);
                                }
                                eiuVar.v = max2;
                            }
                        }
                    }
                }
                int action = motionEvent.getAction();
                if (action == 3 || action == 1) {
                    this.mInterceptingOnItemTouchListener = null;
                }
                z = true;
            }
            if (z) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                stopNestedScroll(0);
                j();
                setScrollState(0);
                return true;
            }
            b bVar = this.mLayout;
            if (bVar != null) {
                boolean ca = bVar.ca();
                boolean cd = this.mLayout.cd();
                if (this.mVelocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                }
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    int[] iArr3 = this.mNestedOffsets;
                    iArr3[1] = 0;
                    iArr3[0] = 0;
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                int[] iArr4 = this.mNestedOffsets;
                obtain.offsetLocation(iArr4[0], iArr4[1]);
                if (actionMasked == 0) {
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    int x2 = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = x2;
                    this.mInitialTouchX = x2;
                    int y2 = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = y2;
                    this.mInitialTouchY = y2;
                    t(0);
                } else {
                    if (actionMasked == 1) {
                        this.mVelocityTracker.addMovement(obtain);
                        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                        float f2 = ca ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                        float f3 = cd ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                        if ((f2 == 0.0f && f3 == 0.0f) || !fling((int) f2, (int) f3)) {
                            setScrollState(0);
                        }
                        VelocityTracker velocityTracker2 = this.mVelocityTracker;
                        if (velocityTracker2 != null) {
                            velocityTracker2.clear();
                        }
                        stopNestedScroll(0);
                        j();
                        obtain.recycle();
                        return true;
                    }
                    if (actionMasked == 2) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                        if (findPointerIndex < 0) {
                            Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                            return false;
                        }
                        int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                        int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                        int i4 = this.mLastTouchX - x3;
                        int i5 = this.mLastTouchY - y3;
                        if (this.mScrollState != 1) {
                            if (ca) {
                                i4 = i4 > 0 ? Math.max(0, i4 - this.mTouchSlop) : Math.min(0, i4 + this.mTouchSlop);
                                if (i4 != 0) {
                                    z2 = true;
                                    if (cd) {
                                        i5 = i5 > 0 ? Math.max(0, i5 - this.mTouchSlop) : Math.min(0, i5 + this.mTouchSlop);
                                        if (i5 != 0) {
                                            z2 = true;
                                        }
                                    }
                                    if (z2) {
                                        setScrollState(1);
                                    }
                                }
                            }
                            z2 = false;
                            if (cd) {
                            }
                            if (z2) {
                            }
                        }
                        if (this.mScrollState == 1) {
                            int[] iArr5 = this.mReusableIntPair;
                            iArr5[0] = 0;
                            iArr5[1] = 0;
                            int n = i4 - n(i4, motionEvent.getY());
                            int h = i5 - h(i5, motionEvent.getX());
                            if (dispatchNestedPreScroll(ca ? n : 0, cd ? h : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                                int[] iArr6 = this.mReusableIntPair;
                                n -= iArr6[0];
                                h -= iArr6[1];
                                int[] iArr7 = this.mNestedOffsets;
                                int i6 = iArr7[0];
                                int[] iArr8 = this.mScrollOffset;
                                iArr7[0] = i6 + iArr8[0];
                                iArr7[1] = iArr7[1] + iArr8[1];
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            int[] iArr9 = this.mScrollOffset;
                            this.mLastTouchX = x3 - iArr9[0];
                            this.mLastTouchY = y3 - iArr9[1];
                            if (scrollByInternal(ca ? n : 0, cd ? h : 0, motionEvent, 0)) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            e eVar = this.mGapWorker;
                            if (eVar != null && (n != 0 || h != 0)) {
                                eVar.h(this, n, h);
                            }
                        }
                    } else if (actionMasked == 3) {
                        VelocityTracker velocityTracker3 = this.mVelocityTracker;
                        if (velocityTracker3 != null) {
                            velocityTracker3.clear();
                        }
                        stopNestedScroll(0);
                        j();
                        setScrollState(0);
                    } else if (actionMasked == 5) {
                        this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                        int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                        this.mLastTouchX = x4;
                        this.mInitialTouchX = x4;
                        int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                        this.mLastTouchY = y4;
                        this.mInitialTouchY = y4;
                    } else if (actionMasked == 6) {
                        q(motionEvent);
                    }
                }
                this.mVelocityTracker.addMovement(obtain);
                obtain.recycle();
                return true;
            }
        }
        return false;
    }

    public final void p(p pVar) {
        View view = pVar.n;
        boolean z = view.getParent() == this;
        this.mRecycler.m(getChildViewHolder(view));
        if (pVar.ah()) {
            this.mChildHelper.l(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.mChildHelper.i(view, -1, true);
            return;
        }
        n nVar = this.mChildHelper;
        int indexOfChild = ((RecyclerView) nVar.f305c.f16548e).indexOfChild(view);
        if (indexOfChild >= 0) {
            nVar.f306d.e(indexOfChild);
            nVar.k(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        WeakHashMap weakHashMap = goi.f18490c;
        postOnAnimation(runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public final void q(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    public final boolean r(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float w = eg.w(edgeEffect) * i2;
        double log = Math.log((Math.abs(-i) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        double d2 = DECELERATION_RATE;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * log) * ((double) (this.mPhysicalCoef * SCROLL_FRICTION)))) < w;
    }

    public void recordAnimationInfoIfBouncedHiddenView(p pVar, geq geqVar) {
        pVar.f313f &= -8193;
        if (this.mState.f10681a && pVar.v() && !pVar.u() && !pVar.w()) {
            this.mViewInfoStore.f11869b.l(getChangedHolderKey(pVar), pVar);
        }
        bcp bcpVar = this.mViewInfoStore.f11868a;
        kr krVar = (kr) bcpVar.get(pVar);
        if (krVar == null) {
            krVar = kr.e();
            bcpVar.put(pVar, krVar);
        }
        krVar.f19563c = geqVar;
        krVar.f19562b |= 4;
    }

    public void removeAndRecycleViews() {
        dgn dgnVar = this.mItemAnimator;
        if (dgnVar != null) {
            dgnVar.i();
        }
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.fh(this.mRecycler);
            this.mLayout.ev(this.mRecycler);
        }
        f fVar = this.mRecycler;
        fVar.f276d.clear();
        fVar.j();
    }

    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        n nVar = this.mChildHelper;
        fmk fmkVar = nVar.f306d;
        fc fcVar = nVar.f305c;
        int i = nVar.f303a;
        boolean z = false;
        z = false;
        if (i == 1) {
            if (nVar.f304b != view) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
            }
        } else {
            if (i == 2) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
            }
            try {
                nVar.f303a = 2;
                int indexOfChild = ((RecyclerView) fcVar.f16548e).indexOfChild(view);
                if (indexOfChild == -1) {
                    nVar.m(view);
                } else if (fmkVar.f(indexOfChild)) {
                    fmkVar.i(indexOfChild);
                    nVar.m(view);
                    fcVar.u(indexOfChild);
                }
                nVar.f303a = 0;
                z = true;
            } finally {
                nVar.f303a = 0;
            }
        }
        if (z) {
            p childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.m(childViewHolderInt);
            this.mRecycler.k(childViewHolderInt);
            if (sVerboseLoggingEnabled) {
                Objects.toString(view);
                toString();
            }
        }
        stopInterceptRequestLayout(!z);
        return z;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        p childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.ah()) {
                childViewHolderInt.f313f &= -257;
            } else if (!childViewHolderInt.w()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(awf.u(this, sb));
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(awf.u(this, sb2));
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(fji fjiVar) {
        b bVar = this.mLayout;
        if (bVar != null) {
            bVar.de("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(fjiVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i));
            return;
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(fsc fscVar) {
        List<fsc> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(fscVar);
    }

    public void removeOnItemTouchListener(ewo ewoVar) {
        this.mOnItemTouchListeners.remove(ewoVar);
        if (this.mInterceptingOnItemTouchListener == ewoVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(doi doiVar) {
        List<doi> list = this.mScrollListeners;
        if (list != null) {
            list.remove(doiVar);
        }
    }

    public void removeRecyclerListener(dmy dmyVar) {
        this.mRecyclerListeners.remove(dmyVar);
    }

    public void repositionShadowingViews() {
        p pVar;
        int h = this.mChildHelper.h();
        for (int i = 0; i < h; i++) {
            View g2 = this.mChildHelper.g(i);
            p childViewHolder = getChildViewHolder(g2);
            if (childViewHolder != null && (pVar = childViewHolder.o) != null) {
                View view = pVar.n;
                int left = g2.getLeft();
                int top = g2.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        i iVar = this.mLayout.dr;
        if ((iVar == null || !iVar.f292g) && !isComputingLayout() && view2 != null) {
            g(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.fa(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            this.mOnItemTouchListeners.get(i).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s(int[] iArr) {
        int h = this.mChildHelper.h();
        if (h == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = he.UNDEFINED_ITEM_ID;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < h; i3++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (!childViewHolderInt.w()) {
                int ag = childViewHolderInt.ag();
                if (ag < i) {
                    i = ag;
                }
                if (ag > i2) {
                    i2 = ag;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public void saveOldPositions() {
        int f2 = this.mChildHelper.f();
        for (int i = 0; i < f2; i++) {
            p childViewHolderInt = getChildViewHolderInt(this.mChildHelper.o(i));
            if (sDebugAssertionsEnabled && childViewHolderInt.f314g == -1 && !childViewHolderInt.u()) {
                throw new IllegalStateException(awf.u(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
            }
            if (!childViewHolderInt.w() && childViewHolderInt.k == -1) {
                childViewHolderInt.k = childViewHolderInt.f314g;
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean ca = bVar.ca();
        boolean cd = this.mLayout.cd();
        if (ca || cd) {
            if (!ca) {
                i = 0;
            }
            if (!cd) {
                i2 = 0;
            }
            scrollByInternal(i, i2, null, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean scrollByInternal(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        boolean z2;
        boolean z3;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i, i2, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i6 = i - i8;
            i7 = i2 - i9;
            i5 = i9;
            i4 = i8;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i4, i5, i6, i7, this.mScrollOffset, i3, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i10 = iArr4[0];
        int i11 = i6 - i10;
        int i12 = iArr4[1];
        int i13 = i7 - i12;
        boolean z4 = (i10 == 0 && i12 == 0) ? false : true;
        int i14 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i15 = iArr5[0];
        this.mLastTouchX = i14 - i15;
        int i16 = this.mLastTouchY;
        int i17 = iArr5[1];
        this.mLastTouchY = i16 - i17;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i15;
        iArr6[1] = iArr6[1] + i17;
        if (getOverScrollMode() != 2) {
            if (motionEvent == null || dyd.ag(motionEvent, 8194)) {
                z = true;
                z2 = false;
            } else {
                float x = motionEvent.getX();
                float f2 = i11;
                float y = motionEvent.getY();
                float f3 = i13;
                if (f2 < 0.0f) {
                    ensureLeftGlow();
                    z = true;
                    z2 = false;
                    eg.h(this.mLeftGlow, (-f2) / getWidth(), 1.0f - (y / getHeight()));
                } else {
                    z = true;
                    z2 = false;
                    if (f2 > 0.0f) {
                        ensureRightGlow();
                        eg.h(this.mRightGlow, f2 / getWidth(), y / getHeight());
                    } else {
                        z3 = false;
                        if (f3 >= 0.0f) {
                            ensureTopGlow();
                            eg.h(this.mTopGlow, (-f3) / getHeight(), x / getWidth());
                        } else {
                            if (f3 > 0.0f) {
                                ensureBottomGlow();
                                eg.h(this.mBottomGlow, f3 / getHeight(), 1.0f - (x / getWidth()));
                            }
                            if (!z3 || f2 != 0.0f || f3 != 0.0f) {
                                postInvalidateOnAnimation();
                            }
                            if (Build.VERSION.SDK_INT >= 31 && dyd.ag(motionEvent, 4194304)) {
                                j();
                            }
                        }
                        z3 = true;
                        if (!z3) {
                        }
                        postInvalidateOnAnimation();
                        if (Build.VERSION.SDK_INT >= 31) {
                            j();
                        }
                    }
                }
                z3 = true;
                if (f3 >= 0.0f) {
                }
                z3 = true;
                if (!z3) {
                }
                postInvalidateOnAnimation();
                if (Build.VERSION.SDK_INT >= 31) {
                }
            }
            considerReleasingGlowsOnScroll(i, i2);
        } else {
            z = true;
            z2 = false;
        }
        if (i4 != 0 || i5 != 0) {
            dispatchOnScrolled(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i4 == 0 && i5 == 0) ? z2 : z;
    }

    public void scrollStep(int i, int i2, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int am = i != 0 ? this.mLayout.am(i, this.mRecycler, this.mState) : 0;
        int m = i2 != 0 ? this.mLayout.m(i2, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = am;
            iArr[1] = m;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void scrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            bVar.dh(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(j jVar) {
        this.mAccessibilityDelegate = jVar;
        goi.ab(this, jVar);
    }

    public void setAdapter(m mVar) {
        setLayoutFrozen(false);
        m(mVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(bms bmsVar) {
        if (bmsVar == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    public boolean setChildImportantForAccessibilityInternal(p pVar, int i) {
        if (!isComputingLayout()) {
            pVar.n.setImportantForAccessibility(i);
            return true;
        }
        pVar.r = i;
        this.mPendingAccessibilityImportanceChange.add(pVar);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(cyd cydVar) {
        cydVar.getClass();
        this.mEdgeEffectFactory = cydVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(dgn dgnVar) {
        dgn dgnVar2 = this.mItemAnimator;
        if (dgnVar2 != null) {
            dgnVar2.i();
            this.mItemAnimator.f14141c = null;
        }
        this.mItemAnimator = dgnVar;
        if (dgnVar != null) {
            dgnVar.f14141c = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i) {
        f fVar = this.mRecycler;
        fVar.f275c = i;
        fVar.l();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(b bVar) {
        if (bVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            dgn dgnVar = this.mItemAnimator;
            if (dgnVar != null) {
                dgnVar.i();
            }
            this.mLayout.fh(this.mRecycler);
            this.mLayout.ev(this.mRecycler);
            f fVar = this.mRecycler;
            fVar.f276d.clear();
            fVar.j();
            if (this.mIsAttached) {
                b bVar2 = this.mLayout;
                bVar2.dz = false;
                bVar2.dc(this);
            }
            this.mLayout.fb(null);
            this.mLayout = null;
        } else {
            f fVar2 = this.mRecycler;
            fVar2.f276d.clear();
            fVar2.j();
        }
        n nVar = this.mChildHelper;
        RecyclerView recyclerView = (RecyclerView) nVar.f305c.f16548e;
        nVar.f306d.m();
        ArrayList arrayList = nVar.f307e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            p childViewHolderInt = getChildViewHolderInt((View) arrayList.get(size));
            if (childViewHolderInt != null) {
                recyclerView.setChildImportantForAccessibilityInternal(childViewHolderInt, childViewHolderInt.f310c);
                childViewHolderInt.f310c = 0;
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = bVar;
        if (bVar != null) {
            if (bVar.dw != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(bVar);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(awf.u(bVar.dw, sb));
            }
            bVar.fb(this);
            if (this.mIsAttached) {
                b bVar3 = this.mLayout;
                bVar3.dz = true;
                bVar3.ey(this);
            }
        }
        this.mRecycler.l();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        dit scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f14245a) {
            ViewGroup viewGroup = scrollingChildHelper.f14249e;
            WeakHashMap weakHashMap = goi.f18490c;
            cd.h(viewGroup);
        }
        scrollingChildHelper.f14245a = z;
    }

    public void setOnFlingListener(gfe gfeVar) {
        this.mOnFlingListener = gfeVar;
    }

    @Deprecated
    public void setOnScrollListener(doi doiVar) {
        this.mScrollListener = doiVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(dvv dvvVar) {
        f fVar = this.mRecycler;
        RecyclerView recyclerView = fVar.f273a;
        fVar.w(recyclerView.mAdapter, false);
        if (fVar.h != null) {
            r2.f14906b--;
        }
        fVar.h = dvvVar;
        if (dvvVar != null && recyclerView.getAdapter() != null) {
            fVar.h.f14906b++;
        }
        fVar.q();
    }

    @Deprecated
    public void setRecyclerListener(dmy dmyVar) {
    }

    public void setScrollState(int i) {
        i iVar;
        if (i == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            new Exception();
        }
        this.mScrollState = i;
        if (i != 2) {
            k kVar = this.mViewFlinger;
            kVar.f295a.removeCallbacks(kVar);
            kVar.f296b.abortAnimation();
            b bVar = this.mLayout;
            if (bVar != null && (iVar = bVar.dr) != null) {
                iVar.u();
            }
        }
        dispatchOnScrollStateChanged(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 1) {
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    public void setViewCacheExtension(agn agnVar) {
        this.mRecycler.getClass();
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, Integer.MIN_VALUE);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3) {
        smoothScrollBy(i, i2, interpolator, i3, false);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!bVar.ca()) {
            i = 0;
        }
        if (!this.mLayout.cd()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (i3 != Integer.MIN_VALUE && i3 <= 0) {
            scrollBy(i, i2);
            return;
        }
        if (z) {
            int i4 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i4 |= 2;
            }
            startNestedScroll(i4, 1);
        }
        this.mViewFlinger.j(i, i2, i3, interpolator);
    }

    public void smoothScrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        b bVar = this.mLayout;
        if (bVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            bVar.cm(this, i);
        }
    }

    public void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m(i, 0);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().m(i, i2);
    }

    public void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException(awf.u(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().f(0);
    }

    public void stopNestedScroll(int i) {
        getScrollingChildHelper().f(i);
    }

    public void stopScroll() {
        i iVar;
        setScrollState(0);
        k kVar = this.mViewFlinger;
        kVar.f295a.removeCallbacks(kVar);
        kVar.f296b.abortAnimation();
        b bVar = this.mLayout;
        if (bVar == null || (iVar = bVar.dr) == null) {
            return;
        }
        iVar.u();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(m mVar, boolean z) {
        setLayoutFrozen(false);
        m(mVar, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(int i) {
        boolean ca = this.mLayout.ca();
        int i2 = ca;
        if (this.mLayout.cd()) {
            i2 = (ca ? 1 : 0) | 2;
        }
        startNestedScroll(i2, i);
    }

    public void viewRangeUpdate(int i, int i2, Object obj) {
        int i3;
        int i4;
        int f2 = this.mChildHelper.f();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < f2; i6++) {
            View o = this.mChildHelper.o(i6);
            p childViewHolderInt = getChildViewHolderInt(o);
            if (childViewHolderInt != null && !childViewHolderInt.w() && (i4 = childViewHolderInt.f314g) >= i && i4 < i5) {
                childViewHolderInt.ab(2);
                if (obj == null) {
                    childViewHolderInt.ab(1024);
                } else if ((1024 & childViewHolderInt.f313f) == 0) {
                    if (childViewHolderInt.i == null) {
                        ArrayList arrayList = new ArrayList();
                        childViewHolderInt.i = arrayList;
                        childViewHolderInt.h = Collections.unmodifiableList(arrayList);
                    }
                    childViewHolderInt.i.add(obj);
                }
                ((yx) o.getLayoutParams()).f20373d = true;
            }
        }
        f fVar = this.mRecycler;
        ArrayList arrayList2 = fVar.f279g;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            p pVar = (p) arrayList2.get(size);
            if (pVar != null && (i3 = pVar.f314g) >= i && i3 < i5) {
                pVar.ab(2);
                fVar.s(size);
            }
        }
    }
}
