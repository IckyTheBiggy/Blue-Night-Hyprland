// Decompiled with JetBrains decompiler
// Type: UnityEngine.Time
// Assembly: UnityEngine.CoreModule, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: E4C194A5-E30E-462A-94E6-80369DC2CC79
// Assembly location: /home/bnn/Unity/Hub/Editor/2022.3.16f1/Editor/Data/Managed/UnityEngine/UnityEngine.CoreModule.dll
// XML documentation location: /home/bnn/Unity/Hub/Editor/2022.3.16f1/Editor/Data/Managed/UnityEngine/UnityEngine.CoreModule.xml

using System.Runtime.CompilerServices;
using UnityEngine.Bindings;

#nullable disable
namespace UnityEngine
{
  /// <summary>
  ///   <para>Provides an interface to get time information from Unity.</para>
  /// </summary>
  [NativeHeader("Runtime/Input/TimeManager.h")]
  [StaticAccessor("GetTimeManager()", StaticAccessorType.Dot)]
  public class Time
  {
    /// <summary>
    ///   <para>The time at the beginning of this frame (Read Only).</para>
    /// </summary>
    [NativeProperty("CurTime")]
    public static extern float time { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The double precision time at the beginning of this frame (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    [NativeProperty("CurTime")]
    public static extern double timeAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The time since this frame started (Read Only). This is the time in seconds since the last non-additive scene has finished loading.</para>
    /// </summary>
    [NativeProperty("TimeSinceSceneLoad")]
    public static extern float timeSinceLevelLoad { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The double precision time since this frame started (Read Only). This is the time in seconds since the last non-additive scene has finished loading.</para>
    /// </summary>
    [NativeProperty("TimeSinceSceneLoad")]
    public static extern double timeSinceLevelLoadAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The interval in seconds from the last frame to the current one (Read Only).</para>
    /// </summary>
    public static extern float deltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The time since the last MonoBehaviour.FixedUpdate started (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    public static extern float fixedTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The double precision time since the last MonoBehaviour.FixedUpdate started (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    [NativeProperty("FixedTime")]
    public static extern double fixedTimeAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    public static extern float unscaledTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The double precision timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    [NativeProperty("UnscaledTime")]
    public static extern double unscaledTimeAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The timeScale-independent time at the beginning of the last MonoBehaviour.FixedUpdate phase (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    public static extern float fixedUnscaledTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The double precision timeScale-independent time at the beginning of the last MonoBehaviour.FixedUpdate (Read Only). This is the time in seconds since the start of the game.</para>
    /// </summary>
    [NativeProperty("FixedUnscaledTime")]
    public static extern double fixedUnscaledTimeAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The timeScale-independent interval in seconds from the last frame to the current one (Read Only).</para>
    /// </summary>
    public static extern float unscaledDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The timeScale-independent interval in seconds from the last MonoBehaviour.FixedUpdate phase to the current one (Read Only).</para>
    /// </summary>
    public static extern float fixedUnscaledDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The interval in seconds at which physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate) are performed.</para>
    /// </summary>
    public static extern float fixedDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; [MethodImpl(MethodImplOptions.InternalCall)] set; }

    /// <summary>
    ///   <para>The maximum value of Time.deltaTime in any given frame. This is a time in seconds that limits the increase of Time.time between two frames.</para>
    /// </summary>
    public static extern float maximumDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; [MethodImpl(MethodImplOptions.InternalCall)] set; }

    /// <summary>
    ///   <para>A smoothed out Time.deltaTime (Read Only).</para>
    /// </summary>
    public static extern float smoothDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The maximum time a frame can spend on particle updates. If the frame takes longer than this, then updates are split into multiple smaller updates.</para>
    /// </summary>
    public static extern float maximumParticleDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; [MethodImpl(MethodImplOptions.InternalCall)] set; }

    /// <summary>
    ///   <para>The scale at which time passes.</para>
    /// </summary>
    public static extern float timeScale { [MethodImpl(MethodImplOptions.InternalCall)] get; [MethodImpl(MethodImplOptions.InternalCall)] set; }

    /// <summary>
    ///   <para>The total number of frames since the start of the game (Read Only).</para>
    /// </summary>
    public static extern int frameCount { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    [NativeProperty("RenderFrameCount")]
    public static extern int renderedFrameCount { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The real time in seconds since the game started (Read Only).</para>
    /// </summary>
    [NativeProperty("Realtime")]
    public static extern float realtimeSinceStartup { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>The real time in seconds since the game started (Read Only). Double precision version of Time.realtimeSinceStartup. </para>
    /// </summary>
    [NativeProperty("Realtime")]
    public static extern double realtimeSinceStartupAsDouble { [MethodImpl(MethodImplOptions.InternalCall)] get; }

    /// <summary>
    ///   <para>Slows your application’s playback time to allow Unity to save screenshots in between frames.</para>
    /// </summary>
    public static extern float captureDeltaTime { [MethodImpl(MethodImplOptions.InternalCall)] get; [MethodImpl(MethodImplOptions.InternalCall)] set; }

    /// <summary>
    ///   <para>The reciprocal of Time.captureDeltaTime.</para>
    /// </summary>
    public static int captureFramerate
    {
      get
      {
        return (double) Time.captureDeltaTime == 0.0 ? 0 : (int) Mathf.Round(1f / Time.captureDeltaTime);
      }
      set => Time.captureDeltaTime = value == 0 ? 0.0f : 1f / (float) value;
    }

    /// <summary>
    ///   <para>Returns true if called inside a fixed time step callback (like MonoBehaviour's MonoBehaviour.FixedUpdate), otherwise returns false.</para>
    /// </summary>
    public static extern bool inFixedTimeStep { [NativeName("IsUsingFixedTimeStep"), MethodImpl(MethodImplOptions.InternalCall)] get; }
  }
}
