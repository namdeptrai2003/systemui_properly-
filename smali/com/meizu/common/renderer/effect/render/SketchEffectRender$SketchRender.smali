.class Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "SketchEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/SketchEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SketchRender"
.end annotation


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision mediump float; \nuniform vec2 uStep; \nuniform float uAlpha;\nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat rgb2gray(vec4 color) { \n    return dot(color, vec4(0.299, 0.587, 0.114, 0.0)); \n} \nvoid main() \n{ \n    vec4 bigStep = vec4(uStep, uStep); \n    float sample = 0.0; \n    sample  = 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.pq)); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.sq)); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(0.0, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, -bigStep.q))); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, -bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.pt)); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.st)); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(0.0, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, -bigStep.t))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, -bigStep.t))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(bigStep.p, 0.0))); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(bigStep.s, 0.0))); \n    sample -= 4.9048 * rgb2gray(texture2D(sTexture, vTexCoord)); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, 0.0))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, 0.0))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.p, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.s, bigStep.t))); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(0.0, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.st)); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.pt)); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.p, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.s, bigStep.q))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(0.0, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.sq)); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.pq)); \n    sample = 1.0 - 3.0 * sample; \n    sample = clamp(sample, 0.0, 1.0); \n    gl_FragColor.rgb = vec3(sample); \n    gl_FragColor.a = uAlpha; \n}"


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision mediump float; \nuniform vec2 uStep; \nuniform float uAlpha;\nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat rgb2gray(vec4 color) { \n    return dot(color, vec4(0.299, 0.587, 0.114, 0.0)); \n} \nvoid main() \n{ \n    vec4 bigStep = vec4(uStep, uStep); \n    float sample = 0.0; \n    sample  = 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.pq)); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.sq)); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(0.0, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, -bigStep.q))); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, -bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.pt)); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord - bigStep.st)); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(0.0, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, -bigStep.t))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, -bigStep.t))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(bigStep.p, 0.0))); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord - vec2(bigStep.s, 0.0))); \n    sample -= 4.9048 * rgb2gray(texture2D(sTexture, vTexCoord)); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.s, 0.0))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(bigStep.p, 0.0))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.p, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.s, bigStep.t))); \n    sample += 0.7146 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(0.0, bigStep.t))); \n    sample += 0.3167 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.st)); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.pt)); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.p, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(-bigStep.s, bigStep.q))); \n    sample += 0.0564 * rgb2gray(texture2D(sTexture, vTexCoord + vec2(0.0, bigStep.q))); \n    sample += 0.0468 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.sq)); \n    sample += 0.0448 * rgb2gray(texture2D(sTexture, vTexCoord + bigStep.pq)); \n    sample = 1.0 - 3.0 * sample; \n    sample = clamp(sample, 0.0, 1.0); \n    gl_FragColor.rgb = vec3(sample); \n    gl_FragColor.a = uAlpha; \n}"

    .line 72
    return-object v0
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 4
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 77
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 78
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;->mUniformStepH:I

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v1, v1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iget-object v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v2, v2, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 81
    return-void
.end method
