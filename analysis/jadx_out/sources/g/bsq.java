package g;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class bsq extends eyh {

    /* renamed from: a, reason: collision with root package name */
    public int f12137a;
    public int aa;

    /* renamed from: g, reason: collision with root package name */
    public int f12138g;
    public int w;
    public int y;

    @Override // g.eyh
    public final ewk dq() {
        ays aysVar = new ays(this);
        aysVar.f11068c = 1;
        aysVar.f11069e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        aysVar.f11070g = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        aysVar.f11066a = -1;
        aysVar.f11067b = -1.0f;
        return aysVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // g.dlv
    public final void dq(String str, String str2) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(str, str2);
        str.getClass();
        int i = 4;
        int i2 = 2;
        switch (str.hashCode()) {
            case -1063257157:
                if (str.equals("alignItems")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -975171706:
                if (str.equals("flexDirection")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -752601676:
                if (str.equals("alignContent")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1744216035:
                if (str.equals("flexWrap")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1860657097:
                if (str.equals("justifyContent")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                switch (str2.hashCode()) {
                    case -1881872635:
                        if (str2.equals("stretch")) {
                            break;
                        }
                        break;
                    case -1720785339:
                        if (str2.equals("baseline")) {
                            break;
                        }
                        break;
                    case -1364013995:
                        if (str2.equals("center")) {
                            break;
                        }
                        break;
                    case 1384876188:
                        if (str2.equals("flex_start")) {
                            break;
                        }
                        break;
                    case 1744442261:
                        if (str2.equals("flex_end")) {
                            break;
                        }
                        break;
                }
                if (r1 == 0) {
                    i = 0;
                } else if (r1 == 1) {
                    i = 1;
                } else if (r1 == 2) {
                    i = 2;
                } else if (r1 == 3) {
                    i = 3;
                }
                this.f12138g = i;
                break;
            case 1:
                str2.getClass();
                switch (str2) {
                    case "column_reverse":
                        i2 = 3;
                        break;
                    case "column":
                        break;
                    case "row_reverse":
                        i2 = 1;
                        break;
                    default:
                        i2 = 0;
                        break;
                }
                this.y = i2;
                break;
            case 2:
                switch (str2.hashCode()) {
                    case -1881872635:
                        if (str2.equals("stretch")) {
                            break;
                        }
                        break;
                    case -1364013995:
                        if (str2.equals("center")) {
                            break;
                        }
                        break;
                    case -932331738:
                        if (str2.equals("space_around")) {
                            break;
                        }
                        break;
                    case 1384876188:
                        if (str2.equals("flex_start")) {
                            break;
                        }
                        break;
                    case 1682480591:
                        if (str2.equals("space_between")) {
                            break;
                        }
                        break;
                    case 1744442261:
                        if (str2.equals("flex_end")) {
                            break;
                        }
                        break;
                }
                if (r1 == 0) {
                    i = 0;
                } else if (r1 == 1) {
                    i = 1;
                } else if (r1 == 2) {
                    i = 2;
                } else if (r1 != 3) {
                    i = r1 != 4 ? 5 : 3;
                }
                this.w = i;
                break;
            case 3:
                str2.getClass();
                this.aa = str2.equals("wrap") ? 1 : 0;
                break;
            case 4:
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            break;
                        }
                        break;
                    case -932331738:
                        if (str2.equals("space_around")) {
                            break;
                        }
                        break;
                    case 1682480591:
                        if (str2.equals("space_between")) {
                            break;
                        }
                        break;
                    case 1744442261:
                        if (str2.equals("flex_end")) {
                            break;
                        }
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                    	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                    	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                    	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                    	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                    	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                    	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
                    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:103)
                    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                    	at jadx.core.ProcessClass.process(ProcessClass.java:79)
                    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:117)
                    	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:402)
                    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:390)
                    	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:340)
                    */
                /*
                    Method dump skipped, instructions count: 508
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: g.bsq.dq(java.lang.String, java.lang.String):void");
            }

            @Override // g.dlv
            public final View ox() {
                cdp cdpVar = new cdp(this.s, null);
                cdpVar.r = -1;
                cdpVar.f12701d = new fdy(cdpVar);
                cdpVar.f12699b = new ArrayList();
                cdpVar.k = new ta();
                cdpVar.p = this;
                return cdpVar;
            }

            @Override // g.dlv
            public final void p() {
                super.p();
                ((cdp) this.ia).setFlexDirection(this.y);
                ((cdp) this.ia).setFlexWrap(this.aa);
                ((cdp) this.ia).setJustifyContent(this.f12137a);
                ((cdp) this.ia).setAlignItems(this.f12138g);
                ((cdp) this.ia).setAlignContent(this.w);
            }
        }
