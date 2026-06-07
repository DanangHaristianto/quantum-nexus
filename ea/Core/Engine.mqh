#ifndef ENGINE_MQH
#define ENGINE_MQH

class CEngine
{
private:

   bool m_initialized;

public:

   CEngine()
   {
      m_initialized = false;
   }

   bool Initialize()
   {
      m_initialized = true;
      return true;
   }

   bool IsInitialized()
   {
      return m_initialized;
   }

   void Shutdown()
   {
      m_initialized = false;
   }
};

#endif
